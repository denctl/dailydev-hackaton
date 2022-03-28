<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/rss">

<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Dev Arena</title>
    
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>

    
    <!-- Own CSS -->
    <link rel="stylesheet" href="/assets/css/base.css"/>
    <script src="https://kit.fontawesome.com/962e4108cf.js" crossorigin="anonymous"></script>
</head>
<body>
    <main>
        <div class="container">
            <div class="row text-center py-5">
                <h1 style="font-weight: 900; color: white;">⚔️ The Daily <sup style="font-style: italic;">dev</sup> Arena ⚔️</h1>
            </div>
            <div class="row">
                <div class="col text-center">
                <h2 style="color: white; font-weight: 900;">PLAYER 1</h2>
                <button style="background-color: transparent; border: none;" onclick="getPoints(player1_points_counter, player1_bookmarks)">
                    <img src="/assets/img/me.jpeg" width="100" alt="" style="border: 3px solid white; border-radius: 20px;"/>
                </button>
                <br/>
                <br/>
                    <input id="player1_bookmarks" type="text" placeholder="://bookmarks-url.com"/>
                    <h2 style="color: white; font-weight: 800;" class="py-5">Points </h2>
                    <h1 id="player1_points_counter" style="font-weight: 900; color: white; font-size: 46px;"></h1>
                    <i class="fa-solid fa-crown player1Won" style="color: white; font-size: 46px; display: none; justify-content: center;"></i>
                    <i class="fa-solid fa-skull player1Lost" style="color: white; font-size: 46px; display: none; justify-content: center;"></i>
                    <i class="fa-solid fa-star-half-stroke draw" style="color: white; font-size: 46px; display: none; justify-content: center;"></i>
                </div>
                <div class="col text-center">
                    <h2 style="color: white; font-weight: 900;">TOPIC</h2>
                    <div class="wrapper m-auto w-75">
                    <select class="form-control" name="topic" id="topic" onfocus='this.size=5;' onblur='this.size=1;' onchange='this.size=1; this.blur();' style="text-align: center; font-weight: 900;">
                          <option value="">General-Programming</option>
                          <option value="">Backend</option>
                          <option value="">Blockchain</option>
                          <option value="">Crawling</option>
                          <option value="">Data Science</option>
                          <option value="">DevOps</option>
                          <option value="">Erlang</option>
                          <option value="">Gaming</option>
                          <option value="">Hardware</option>
                          <option value="">Infrastructure</option>
                          <option value="">Javascript</option>
                          <option value="">JVM</option>
                          <option value="">Linux</option>
                          <option value="">Microsoft</option>
                          <option value="">Misc</option>
                          <option value="">Mobile</option>
                          <option value="">Open Source</option>
                          <option value="">PHP</option>
                          <option value="">Platforms</option>
                          <option value="">Python</option>
                          <option value="">Ruby</option>
                          <option value="">Security</option>
                          <option value="">Tech News</option>
                          <option value="">Tools</option>
                          <option value="">Virtual Reality</option>
                          <option value="">Webdev</option>
                      </select>
                    </div>
                    <div class="fight-btn">
                        <a onclick="fightButton()" class="btn btn-danger" style="padding: 20px 100px; font-weight: 900; font-size: 26px;">FIGHT</a>
                    </div>
                    <div class="points-table text-center mt-3" style="display: none;">
                      <table border="1" id="points-table" style="margin: auto; width: 75%; text-align: center;">
                        </table>
                    </div>
                </div>
                <div class="col text-center">
                    <h2 style="color: white; font-weight: 900;">PLAYER 2</h2>
                    <button style="background-color: transparent; border: none;" onclick="getPoints(player2_points_counter, player2_bookmarks)">
                      <img src="/assets/img/bobby.jpeg" width="100" alt="" style="border: 3px solid white; border-radius: 20px;"/>
                    </button>
                    <br/><br/>
                    <input id="player2_bookmarks" type="text" placeholder="://bookmarks-url.com"/>
                    <h2 style="color: white; font-weight: 800;" class="py-5">Points </h2>
                    <h1 id="player2_points_counter" style="font-weight: 900; color: white; font-size: 46px;"></h1>
                    <i class="fa-solid fa-crown player2Won" style="color: white; font-size: 46px; display: none; justify-content: center;"></i>
                    <i class="fa-solid fa-skull player2Lost" style="color: white; font-size: 46px; display: none; justify-content: center;"></i>
                    <i class="fa-solid fa-star-half-stroke draw" style="color: white; font-size: 46px; display: none; justify-content: center;"></i>

                </div>
            </div>
        </div>
    </main>


    <!-- Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

    <!-- Own Scripts -->
    <script src="/assets/js/main.js"></script>
    
</body>
</html>







</xsl:template>
</xsl:stylesheet>