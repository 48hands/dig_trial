

http://docs.digdag.io/

## install digdag

```
curl -o ~/bin/digdag --create-dirs -L "https://dl.digdag.io/digdag-latest"
chmod +x ~/bin/digdag
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
```

## running sample workflow

```
digdag init mydag
cd mydag
digdag run mydag.dig
```

`mydag.dig`

```yml
timezone: UTC

+setup:
  echo>: start ${session_time}

+disp_current_date:
  echo>: ${moment(session_time).utc().format('YYYY-MM-DD HH:mm:ss Z')}

+repeat:
  for_each>:
    order: [first, second, third]
    animal: [dog, cat]
  _do:
    echo>: ${order} ${animal}
  _parallel: true

+teardown:
  echo>: finish ${session_time}
```