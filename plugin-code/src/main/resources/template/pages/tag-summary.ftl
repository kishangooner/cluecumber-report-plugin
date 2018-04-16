<!-- <#include "../snippets/license.ftl"> -->

<!DOCTYPE html>
<html lang="en">
<head>
    <base href="..">
    <#include "../snippets/common_headers.ftl">
    <#include "../snippets/css.ftl">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <span class="navbar-brand">Tag Summary</span>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="index.html">Suite Overview</a>
            </li>
        </ul>
        <span class="text-light">${reportDetails.date}</span>
    </div>
</nav>

<main role="main" class="container">
    <div class="cluecumber-template">

        <div class="row">
            <div class="col-sm-12">
                <div class="card h-100">
                    <div class="card-header">Tag Summary Result Chart</div>
                    <div class="card-body">
                        <div id="canvas-holder" class="w-100 text-center">
                            <canvas id="chart-area" class="w-100"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">Tag Summary</div>
                    <div class="card-body">
                        <table id="tag_summary" class="table table-hover">
                            <thead>
                            <tr>
                                <th>Tag</th>
                                <th>Total</th>
                                <th>Passed</th>
                                <th>Failed</th>
                                <th>Skipped</th>
                            </tr>
                            </thead>
                            <tbody>
                                <#list tagStats as tag, tagStat>
                                <tr>
                                    <td class="text-left">${tag}</td>
                                    <td class="text-left"><strong>${tagStat.total}</strong></td>
                                    <td class="text-left">${tagStat.passed}</td>
                                    <td class="text-left">${tagStat.failed}</td>
                                    <td class="text-left">${tagStat.skipped}</td>
                                </tr>
                                </#list>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<#include "../snippets/footer.ftl">
<#include "../snippets/js.ftl">

</body>
</html>