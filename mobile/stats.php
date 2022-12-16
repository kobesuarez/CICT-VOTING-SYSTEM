<?php
include('connection.php');
$presq = "SELECT * FROM president ORDER BY votes DESC LIMIT 6";
$countres = mysqli_query($conn, $presq);
$pres = array();
$presvote = array();
while ($getrow = mysqli_fetch_array($countres)) {
    $pres[] = $getrow['pres_name'];
    $presvote[] = $getrow["votes"];
}


$vpresiq = "SELECT * FROM vpresi ORDER BY votes DESC LIMIT 6";
$countres = mysqli_query($conn, $vpresiq);
$vpresi = array();
$vpresivote = array();
while ($getrow = mysqli_fetch_array($countres)) {
    $vpresi[] = $getrow['vpresi_name'];
    $vpresivote[] = $getrow["votes"];
}

$vpreseq = "SELECT * FROM vprese ORDER BY votes DESC LIMIT 6";
$countres = mysqli_query($conn, $vpreseq);
$vprese = array();
$vpresevote = array();
while ($getrow = mysqli_fetch_array($countres)) {
    $vprese[] = $getrow['vprese_name'];
    $vpresevote[] = $getrow["votes"];
}
$gensecq = "SELECT * FROM gensec ORDER BY votes DESC LIMIT 6";
$countres = mysqli_query($conn, $gensecq);
$gensec = array();
$gensecvote = array();
while ($getrow = mysqli_fetch_array($countres)) {
    $gensec[] = $getrow['gensec_name'];
    $gensecvote[] = $getrow["votes"];
}

$depsecq = "SELECT * FROM depsec ORDER BY votes DESC LIMIT 6";
$countres = mysqli_query($conn, $depsecq);
$depsec = array();
$depsecvote = array();
while ($getrow = mysqli_fetch_array($countres)) {
    $depsec[] = $getrow['depsec_name'];
    $depsecvote[] = $getrow["votes"];
}

$treaq = "SELECT * FROM trea ORDER BY votes DESC LIMIT 6";
$countres = mysqli_query($conn, $treaq);
$trea = array();
$treavote = array();
while ($getrow = mysqli_fetch_array($countres)) {
    $trea[] = $getrow['trea_name'];
    $treavote[] = $getrow["votes"];
}

$audiq = "SELECT * FROM audi ORDER BY votes DESC LIMIT 6";
$countres = mysqli_query($conn, $audiq);
$audi = array();
$audivote = array();
while ($getrow = mysqli_fetch_array($countres)) {
    $audi[] = $getrow['audi_name'];
    $audivote[] = $getrow["votes"];
}

$piomq = "SELECT * FROM piom ORDER BY votes DESC LIMIT 6";
$countres = mysqli_query($conn, $piomq);
$piom = array();
$piomvote = array();
while ($getrow = mysqli_fetch_array($countres)) {
    $piom[] = $getrow['piom_name'];
    $piomvote[] = $getrow["votes"];
}

$piofq = "SELECT * FROM piof ORDER BY votes DESC LIMIT 6";
$countres = mysqli_query($conn, $piofq);
$piof = array();
$piofvote = array();
while ($getrow = mysqli_fetch_array($countres)) {
    $piof[] = $getrow['piof_name'];
    $piofvote[] = $getrow["votes"];
}
?>
<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="/css/vote.css">
<link rel="shortcut icon" href="/src/cict.png" type="image/x-icon/">
<title>Report</title>
</head>

<body>
    <script>
        function toggleMobileMenu(menu) {
            menu.classList.toggle('open');
        }
    </script>
    <header>
        <div class="top g-0 py-0">
            <div class="logo">
                <img src="/src/cict.png" class="icon">
            </div>
            <div class="name">
                <p class="schoolname">Taguig City University</p>
                <p class="webname">Computer Science Voting Portal</p>
            </div>
            <?php
            if (!isset($_SESSION['stno'])) {
                echo    '<div id="hamburger-icon" onclick="toggleMobileMenu(this)">
                            <div class="bar1"></div>
                            <div class="bar2"></div>
                            <div class="bar3"></div>
                                <ul class="mobile-menu h-25">
                                <li><a href="dashboard.php">Home</a></li>
                                <li><a href="login.php">Login</a></li>
                                <li><a href="signup.php">Sign Up</a></li>
                                <li><a href="stats.php">Report</a></li>
                            </ul>
                        </div>';
            } else {
                echo    '<div id="hamburger-icon" onclick="toggleMobileMenu(this)">
                            <div class="bar1"></div>
                            <div class="bar2"></div>
                            <div class="bar3"></div>
                            <ul class="mobile-menu">
                                <li><a href="dashboard.php">Home</a></li>
                                <li><a href="president.php">President</a></li>
                                <li><a href="vpresi.php">VP - Internal</a></li>
                                <li><a href="vprese.php">VP - External</a></li>
                                <li><a href="gensec.php">General Secretary</a></li>
                                <li><a href="depsec.php">Deputy Secretary</a></li>
                                <li><a href="trea.php">Treasurer</a></li>
                                <li><a href="audi.php">Auditor</a></li>
                                <li><a href="piom.php">PIO - Male</a></li>
                                <li><a href="piof.php">PIO - Female</a></li>
                                <li><a href="report.php">Report</a></li>
                                <li><a href="">Voter\'s Count</a></li>
                                <li><a href="studentsettings.php">Settings</a></li>
                                <li><a href="logout.php">Logout</a></li>
                            </ul>
                        </div>';
            }
            ?>
        </div>

    </header><br>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <h4 class="text-center mt-3 mb-0">President</h4>
    <canvas id="pres" width="30%" height="20%"></canvas>
    <script>
        const presvote = <?php echo json_encode($presvote);  ?>;
        const presname = <?php echo json_encode($pres);  ?>;
        const pres = {
            labels: presname,
            datasets: [{
                axis: 'x',
                label: 'Leading Votes per Position',
                data: presvote,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 205, 86, 0.2)'
                ],
                borderColor: [
                    'rgb(255, 99, 132)',
                    'rgb(255, 159, 64)',
                    'rgb(255, 205, 86)'
                ],
                borderWidth: 1
            }]
        };
        const plugin = {
            id: 'customCanvasBackgroundColor',
            beforeDraw: (chart, args, options) => {
                const {
                    ctx
                } = chart;
                ctx.save();
                ctx.globalCompositeOperation = 'destination-over';
                ctx.fillStyle = options.color || '#99ffff';
                ctx.fillRect(0, 0, chart.width, chart.height);
                ctx.restore();
            }
        };
        const presconfig = {
            type: 'bar',
            data: pres,
            options: {
                indexAxis: 'x',
                scales: {
                    y: {
                        beginAtZero: true
                    }
                },
                plugins: {
                    customCanvasBackgroundColor: {
                        color: '#D9D9D9',
                    }
                }
            },
            plugins: [plugin],
        };
        const presbar = new Chart(document.getElementById('pres'), presconfig);
    </script>

    <h4 class="text-center mt-3 mb-0">Vice President - Internal</h4>
    <canvas id="vpresi" width="30%" height="20%"></canvas>
    <script>
        const vpresivote = <?php echo json_encode($vpresivote);  ?>;
        const vpresiname = <?php echo json_encode($vpresi);  ?>;
        const vpresi = {
            labels: vpresiname,
            datasets: [{
                axis: 'x',
                label: 'Leading Votes per Position',
                data: vpresivote,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 205, 86, 0.2)'
                ],
                borderColor: [
                    'rgb(255, 99, 132)',
                    'rgb(255, 159, 64)',
                    'rgb(255, 205, 86)'
                ],
                borderWidth: 1
            }]
        };
        const vpiplugin = {
            id: 'customCanvasBackgroundColor',
            beforeDraw: (chart, args, options) => {
                const {
                    ctx
                } = chart;
                ctx.save();
                ctx.globalCompositeOperation = 'destination-over';
                ctx.fillStyle = options.color || '#99ffff';
                ctx.fillRect(0, 0, chart.width, chart.height);
                ctx.restore();
            }
        };
        const vpresiconfig = {
            type: 'bar',
            data: vpresi,
            options: {
                indexAxis: 'x',
                scales: {
                    y: {
                        beginAtZero: true
                    }
                },
                plugins: {
                    customCanvasBackgroundColor: {
                        color: '#D9D9D9',
                    }
                }
            },
            plugins: [vpiplugin],
        };
        const vpresibar = new Chart(document.getElementById('vpresi'), vpresiconfig);
    </script>

    <h4 class="text-center mt-3 mb-0">Vice President - External</h4>
    <canvas id="vprese" width="30%" height="20%"></canvas>

    <script>
        const vpresevote = <?php echo json_encode($vpresevote);  ?>;
        const vpresename = <?php echo json_encode($vprese);  ?>;
        const vprese = {
            labels: vpresename,
            datasets: [{
                axis: 'x',
                label: 'Leading Votes per Position',
                data: vpresevote,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 205, 86, 0.2)'
                ],
                borderColor: [
                    'rgb(255, 99, 132)',
                    'rgb(255, 159, 64)',
                    'rgb(255, 205, 86)'
                ],
                borderWidth: 1
            }]
        };
        const vpeplugin = {
            id: 'customCanvasBackgroundColor',
            beforeDraw: (chart, args, options) => {
                const {
                    ctx
                } = chart;
                ctx.save();
                ctx.globalCompositeOperation = 'destination-over';
                ctx.fillStyle = options.color || '#99ffff';
                ctx.fillRect(0, 0, chart.width, chart.height);
                ctx.restore();
            }
        };
        const vpreseconfig = {
            type: 'bar',
            data: vprese,
            options: {
                indexAxis: 'x',
                scales: {
                    y: {
                        beginAtZero: true
                    }
                },
                plugins: {
                    customCanvasBackgroundColor: {
                        color: '#D9D9D9',
                    }
                }
            },
            plugins: [vpeplugin],
        };
        const vpresebar = new Chart(document.getElementById('vprese'), vpreseconfig);
    </script>

    <h4 class="text-center mt-3 mb-0">General Secretary</h4>
    <canvas id="gensec" width="30%" height="20%"></canvas>

    <script>
        const gensecvote = <?php echo json_encode($gensecvote);  ?>;
        const gensecname = <?php echo json_encode($gensec);  ?>;
        const gensec = {
            labels: gensecname,
            datasets: [{
                axis: 'x',
                label: 'Leading Votes per Position',
                data: gensecvote,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 205, 86, 0.2)'
                ],
                borderColor: [
                    'rgb(255, 99, 132)',
                    'rgb(255, 159, 64)',
                    'rgb(255, 205, 86)'
                ],
                borderWidth: 1
            }]
        };
        const gplugin = {
            id: 'customCanvasBackgroundColor',
            beforeDraw: (chart, args, options) => {
                const {
                    ctx
                } = chart;
                ctx.save();
                ctx.globalCompositeOperation = 'destination-over';
                ctx.fillStyle = options.color || '#99ffff';
                ctx.fillRect(0, 0, chart.width, chart.height);
                ctx.restore();
            }
        };
        const gensecconfig = {
            type: 'bar',
            data: gensec,
            options: {
                indexAxis: 'x',
                scales: {
                    y: {
                        beginAtZero: true
                    }
                },
                plugins: {
                    customCanvasBackgroundColor: {
                        color: '#D9D9D9',
                    }
                }
            },
            plugins: [gplugin],
        };
        const gensecbar = new Chart(document.getElementById('gensec'), gensecconfig);
    </script>

    <h4 class="text-center mt-3 mb-0">Deputy Secretary</h4>
    <canvas id="depsec" width="30%" height="20%"></canvas>

    <script>
        const depsecvote = <?php echo json_encode($depsecvote);  ?>;
        const depsecname = <?php echo json_encode($depsec);  ?>;
        const depsec = {
            labels: depsecname,
            datasets: [{
                axis: 'x',
                label: 'Leading Votes per Position',
                data: depsecvote,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 205, 86, 0.2)'
                ],
                borderColor: [
                    'rgb(255, 99, 132)',
                    'rgb(255, 159, 64)',
                    'rgb(255, 205, 86)'
                ],
                borderWidth: 1
            }]
        };
        const dplugin = {
            id: 'customCanvasBackgroundColor',
            beforeDraw: (chart, args, options) => {
                const {
                    ctx
                } = chart;
                ctx.save();
                ctx.globalCompositeOperation = 'destination-over';
                ctx.fillStyle = options.color || '#99ffff';
                ctx.fillRect(0, 0, chart.width, chart.height);
                ctx.restore();
            }
        };
        const depsecconfig = {
            type: 'bar',
            data: depsec,
            options: {
                indexAxis: 'x',
                scales: {
                    y: {
                        beginAtZero: true
                    }
                },
                plugins: {
                    customCanvasBackgroundColor: {
                        color: '#D9D9D9',
                    }
                }
            },
            plugins: [dplugin],
        };
        const depsecbar = new Chart(document.getElementById('depsec'), depsecconfig);
    </script>

    <h4 class="text-center mt-3 mb-0">Treasurer</h4>
    <canvas id="trea" width="30%" height="20%"></canvas>

    <script>
        const treavote = <?php echo json_encode($treavote);  ?>;
        const treaname = <?php echo json_encode($trea);  ?>;
        const trea = {
            labels: treaname,
            datasets: [{
                axis: 'x',
                label: 'Leading Votes per Position',
                data: treavote,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 205, 86, 0.2)'
                ],
                borderColor: [
                    'rgb(255, 99, 132)',
                    'rgb(255, 159, 64)',
                    'rgb(255, 205, 86)'
                ],
                borderWidth: 1
            }]
        };
        const tplugin = {
            id: 'customCanvasBackgroundColor',
            beforeDraw: (chart, args, options) => {
                const {
                    ctx
                } = chart;
                ctx.save();
                ctx.globalCompositeOperation = 'destination-over';
                ctx.fillStyle = options.color || '#99ffff';
                ctx.fillRect(0, 0, chart.width, chart.height);
                ctx.restore();
            }
        };
        const treaconfig = {
            type: 'bar',
            data: trea,
            options: {
                indexAxis: 'x',
                scales: {
                    y: {
                        beginAtZero: true
                    }
                },
                plugins: {
                    customCanvasBackgroundColor: {
                        color: '#D9D9D9',
                    }
                }
            },
            plugins: [tplugin],
        };
        const treabar = new Chart(document.getElementById('trea'), treaconfig);
    </script>

    <h4 class="text-center mt-3 mb-0">Auditor</h4>
    <canvas id="audi" width="30%" height="20%"></canvas>

    <script>
        const audivote = <?php echo json_encode($audivote);  ?>;
        const audiname = <?php echo json_encode($audi);  ?>;
        const audi = {
            labels: audiname,
            datasets: [{
                axis: 'x',
                label: 'Leading Votes per Position',
                data: audivote,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 205, 86, 0.2)'
                ],
                borderColor: [
                    'rgb(255, 99, 132)',
                    'rgb(255, 159, 64)',
                    'rgb(255, 205, 86)'
                ],
                borderWidth: 1
            }]
        };
        const aplugin = {
            id: 'customCanvasBackgroundColor',
            beforeDraw: (chart, args, options) => {
                const {
                    ctx
                } = chart;
                ctx.save();
                ctx.globalCompositeOperation = 'destination-over';
                ctx.fillStyle = options.color || '#99ffff';
                ctx.fillRect(0, 0, chart.width, chart.height);
                ctx.restore();
            }
        };
        const audiconfig = {
            type: 'bar',
            data: audi,
            options: {
                indexAxis: 'x',
                scales: {
                    y: {
                        beginAtZero: true
                    }
                },
                plugins: {
                    customCanvasBackgroundColor: {
                        color: '#D9D9D9',
                    }
                }
            },
            plugins: [aplugin],
        };
        const audibar = new Chart(document.getElementById('audi'), audiconfig);
    </script>

    <h4 class="text-center mt-3 mb-0">Public Information Officer - Male</h4>
    <canvas id="piom" width="30%" height="20%"></canvas>

    <script>
        const piomvote = <?php echo json_encode($piomvote);  ?>;
        const piomname = <?php echo json_encode($piom);  ?>;
        const piom = {
            labels: piomname,
            datasets: [{
                axis: 'x',
                label: 'Leading Votes per Position',
                data: piomvote,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 205, 86, 0.2)'
                ],
                borderColor: [
                    'rgb(255, 99, 132)',
                    'rgb(255, 159, 64)',
                    'rgb(255, 205, 86)'
                ],
                borderWidth: 1
            }]
        };
        const pmplugin = {
            id: 'customCanvasBackgroundColor',
            beforeDraw: (chart, args, options) => {
                const {
                    ctx
                } = chart;
                ctx.save();
                ctx.globalCompositeOperation = 'destination-over';
                ctx.fillStyle = options.color || '#99ffff';
                ctx.fillRect(0, 0, chart.width, chart.height);
                ctx.restore();
            }
        };
        const piomconfig = {
            type: 'bar',
            data: piom,
            options: {
                indexAxis: 'x',
                scales: {
                    y: {
                        beginAtZero: true
                    }
                },
                plugins: {
                    customCanvasBackgroundColor: {
                        color: '#D9D9D9',
                    }
                }
            },
            plugins: [pmplugin],
        };
        const piombar = new Chart(document.getElementById('piom'), piomconfig);
    </script>

    <h4 class="text-center mt-3 mb-0">Public Information Officer - Female</h4>
    <canvas id="piof" width="30%" height="20%"></canvas>

    <script>
        const piofvote = <?php echo json_encode($piofvote);  ?>;
        const piofname = <?php echo json_encode($piof);  ?>;
        const piof = {
            labels: piofname,
            datasets: [{
                axis: 'x',
                label: 'Leading Votes per Position',
                data: piofvote,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 205, 86, 0.2)'
                ],
                borderColor: [
                    'rgb(255, 99, 132)',
                    'rgb(255, 159, 64)',
                    'rgb(255, 205, 86)'
                ],
                borderWidth: 1
            }]
        };
        const pfplugin = {
            id: 'customCanvasBackgroundColor',
            beforeDraw: (chart, args, options) => {
                const {
                    ctx
                } = chart;
                ctx.save();
                ctx.globalCompositeOperation = 'destination-over';
                ctx.fillStyle = options.color || '#99ffff';
                ctx.fillRect(0, 0, chart.width, chart.height);
                ctx.restore();
            }
        };
        const piofconfig = {
            type: 'bar',
            data: piof,
            options: {
                indexAxis: 'x',
                scales: {
                    y: {
                        beginAtZero: true
                    }
                },
                plugins: {
                    customCanvasBackgroundColor: {
                        color: '#D9D9D9',
                    }
                }
            },
            plugins: [pfplugin],
        };
        const piofbar = new Chart(document.getElementById('piof'), piofconfig);
    </script>
    
</body>

</html>