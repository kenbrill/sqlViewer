<link rel="stylesheet" property="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
      integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
{$ERROR}
{if $TYPE eq 'SQL'}
    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col">
                <p>
                <h3>Copy and Paste the SQL Query from your log file to this text area and click Submit</h3></p>
                <form name="sqlViewer" method="POST" enctype="multipart/form-data" id="sqlViewer"
                      action="index.php?module=Administration&action=sqlViewer" autocomplete="off">
                    {sugar_csrf_form_token}
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Paste your SQL here</label>
                        <textarea style="background-color:lightgray" class="form-control" name="sql" id="sql"
                                  rows="10">{$SQL}</textarea>
                    </div>

                    <div class="input-group mb-3">
                        <input name="submit" type="submit" value="Submit and Show Query" class="btn btn-success">
                        <span class="input-group-text">  </span>
                        {if $ALLOW_RUN eq '1'}
                            <input name="submit" type="submit" value="Submit and Run Query" class="btn btn-success">
                            <span class="input-group-text">  </span>
                        {/if}
                        <input name="submit"
                               type="submit"
                               value="Retrieve SQL from LOG"
                               class="btn btn-success"
                               onclick="document. getElementById('sql').value=''">
                        <span class="input-group-text">Limited to</span>
                        <input type="number" name="rows" id="rows" value="500" class="form-control">
                        <span class="input-group-text">rows</span>
                    </div>
                </form>
                <br>
                <hr>

                <div class="border w-100 text-break">{$FINAL_SQL}</div>
            </div>
        </div>
    </div>
{elseif $TYPE eq 'LIST'}
    <table border="1" width="100%" class="table table-striped">
        <tr>
            {foreach from=$COLS key=myId item=i}
                <th width="{$i.size}">{$i.name}</th>
            {/foreach}
        </tr>
        {foreach from=$DATA key=myId item=i}
            <tr>
                <td>
                    <form name="sql{$i.index}" method="POST" enctype="multipart/form-data" id="sql{$i.index}"
                          action="index.php?module=Administration&action=sqlViewer" autocomplete="off">
                        {sugar_csrf_form_token}
                        <input type="hidden" name="sql" value="{$i.urlQuery}">
                        <input type="submit" name="submit" value=" {$i.index} ">
                    </form>
                </td>
                <td>
                    {$i.date}
                </td>
                <td>
                    {$i.query}
                </td>
            </tr>
        {/foreach}
    </table>
{else}
    <form name="sqlViewer" method="POST" enctype="multipart/form-data" id="sqlViewer"
           action="index.php?module=Administration&action=sqlViewer" autocomplete="off">
        {sugar_csrf_form_token}
        <input type="hidden" name="sql" value="{$RETURN_QUERY}">
        <input name="submit" type="submit" value="Return to sqlViewer" class="btn btn-success">
    </form>

    <table border="1" width="100%" class="table table-striped">
        <tr>
            {foreach from=$COLS item=foo}
                <th>{$foo}</th>
            {/foreach}
        </tr>
        {foreach from=$DATA key=myId item=i}
            <tr>
            {foreach from=$i key=k item=v}
                <td>{$v}</td>
            {/foreach}
            </tr>
        {/foreach}
    </table>
{/if}
<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
        crossorigin="anonymous"></script>

