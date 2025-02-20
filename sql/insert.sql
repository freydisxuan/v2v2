insert into categories (name) values ('HTML');
insert into categories (name) values ('CSS');
insert into categories (name) values ('JavaScript');

INSERT INTO questions (question, category_id) VALUES ('Ef við værum að smíða vefsíðu og myndum vilja geta farið frá index.html yfir á about.html, hvað væri best að nota?', 1);
INSERT INTO questions (question, category_id) VALUES ('Í <head> á vefjum setjum við <meta charset="utf-8"> (eða það stafasett sem nota á), afhverju er það gert?', 1);
INSERT INTO questions (question, category_id) VALUES ('Það sem við getum gert til að forrita aðgengilega vefi er', 1);
INSERT INTO questions (question, category_id) VALUES ('Hvað er merkingarfræði í sambandi við námsefnið?', 1);
INSERT INTO questions (question, category_id) VALUES ('Fyrir eftirfarandi HTML / for the following HTML:


<div class="text">
  <h1 class="important text__title">Halló heimur</p>
</div>
 

Er skilgreint CSS / there is defined CSS:


.text {
  font-size: 10px;
  color: green;
}

.text .text__title {
  font-size: 1.5em;
}

.important {
  font-size: 2em;
  color: red;
}

 

Hvert af eftirfarandi er satt fyrir textann „Halló heimur“ eftir að búið er að reikna gildi?', 2);
INSERT INTO questions (question, category_id) VALUES ('Ef við erum að nota nýtt gildi fyrir lit í CSS sem er ekki víst að sé stutt í öllum vöfrum, þá ættum við að', 2);
INSERT INTO questions (question, category_id) VALUES ('Í verkefnum höfum við unnið með „containers“ og „items“ sem hugtök, hvað á það við?', 2);
INSERT INTO questions (question, category_id) VALUES ('Þegar við notum flexbox hvað af eftirfarandi er satt? Gerið ráð fyrir að skjal sé lesið frá vinstri til hægri.', 2);
INSERT INTO questions (question, category_id) VALUES ('Hvað er skrifað út eftir að eftirfarandi kóði er keyrður?

const items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

const іtem = items
  .map((i) => i * 2)
  .filter(
    (i) => i < 10
  )
  .find((i) => i > 6)


console.log(item);', 3);
INSERT INTO questions (question, category_id) VALUES ('Þegar við berum saman gildi í JavaScript ættum við alltaf að nota þrjú samasem merki (`===`) því að', 3);
INSERT INTO questions (question, category_id) VALUES ('Þegar við notum `fetch` í JavaScript ætti ferlið við að sækja gögn að vera', 3);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('<form method="get" action="about.html"><button>About</button></form>', false, 1);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('<a href="about.html">About</a>', true, 1);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Allar jafn góðar / All equally good', false, 1);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('<button to="about.html">About</button>', false, 1);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Ekkert af þessu.', false, 2);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Skilgreining sem visual studio verður að hafa þannig að prettier virki rétt.', false, 2);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Þannig að stafir birtist rétt.', true, 2);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Skilgreining sem aXe krefur okkur um til að vefur verði aðgengilegur.', false, 2);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Allt af þessu.', true, 3);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Merkja form á aðgengilegan hátt.', false, 3);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Hafa tóman alt texta á myndum ef þær eru eingöngu til skrauts.', false, 3);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Nota eingöngu lyklaborð við að skoða og nota vefinn.', false, 3);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Hvert HTML element hefur einhverja skilgreinda merkingu—merkingarfræðilegt gildi—sem við þurfum að hafa í huga þegar við smíðum vefi.', true, 4);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Hvert CSS eigindi hefur einhverja skilgreinda merkingu—merkingarfræðilegt gildi—sem við þurfum að hafa í huga þegar við smíðum vefi.', false, 4);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Hver CSS selector hefur einhverja skilgreinda merkingu—merkingarfræðilegt gildi—sem við þurfum að hafa í huga þegar við smíðum vefi.', false, 4);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Hvert HTML tag hefur einhverja skilgreinda merkingu—merkingarfræðilegt gildi—sem við þurfum að hafa í huga þegar við smíðum vefi.', false, 4);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('font-size: 15px;, color: red;', false, 5);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('font-size: 15px;, color: green;', false, 5);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('font-size: 20px;, color: red;', false, 5);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('font-size: 20px;, color: green;', true, 5);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Skilgreina fallback gildi á undan nýja gildinu sem væri notað í stað þess ef það er ekki stutt', true, 6);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Setja upp JavaScript virkni sem bendir notanda á að sækja nýjann vafra sem styður gildið.', false, 6);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Skilgreina fallback gildi á eftir nýja gildinu sem væri notað í stað þess ef það er ekki stutt.', false, 6);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Þetta er ekki stutt í CSS.', false, 6);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('„Grid container“ og „grid items“: greinarmunur á foreldri og börnum eingöngu þegar grid er notað.', false, 7);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Hugtök sem eru notuð með `querySelectorAll`: „container“ er það element sem leitað er undir, „items“ það sem er skilað.', false, 7);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('„Flex container“ og „flex items; „grid container“ og „grid items“: greinarmunur á foreldri og börnum þegar flexbox og CSS grid er notað.', true, 7);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('„Flex container“ og „flex items: greinarmunur á foreldri og börnum eingngu þegar flexbox er notað.', false, 7);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Höfum skilgreinda tvo ása: aðalás og krossás sem eru hornréttir; sjálfgefin röðun er á krossás frá vinstri til hægri.', false, 8);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Höfum skilgreinda tvo ása: aðalás og krossás sem eru hornréttir; sjálfgefin röðun er á aðalás frá vinstri til hægri.', true, 8);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Höfum skilgreinda tvo ása: aðalás og krossás sem eru samsíða; sjálfgefin röðun er á krossás frá vinstri til hægri.', false, 8);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Höfum skilgreinda tvo ása: aðalás og krossás sem eru samsíða; sjálfgefin röðun er á aðalás frá vinstri til hægri.', false, 8);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('[8]', false, 9);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('8', true, 9);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Uncaught ReferenceError: item is not defined', false, 9);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('undefined', false, 9);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Við ættum alltaf að nota tvö samasem merki, ekki þrjú því þá byrjum við á að bera saman týpur gilda og komumst þannig framhjá type coercion.', false, 10);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Þessi samanburður byrjar á að bera saman týpur gilda og kemst því framhjá type coercion sem gerist með samanburð með tveimur samasem merkjum.', true, 10);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Þessi samanburður nýtir lógíska virkja sem virka aðeins í tvístæðum.', false, 10);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Þessi samanburður kemst framhjá truthy og falsy gildum og skilar eingöngu réttum niðurstöðum fyrir primitive gildi.', false, 10);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Búið til `fetch` request kall sem tilgreinir að minnsta kosti URL; villuathugun á kalli og svari með tilliti til HTTP; eingöngu JSON gögn sótt í response með villuathugun.', false, 11);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Búið til `fetch` request kall sem verður að tilgreina URL, HTTP aðferð og stöðukóða; villuathugun á kalli og svari með tilliti til HTTP; gögn sótt í response með villuathugun.', false, 11);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Búið til `fetch` request kall sem tilgreinir að minnsta kosti URL; villuathugun á kalli og svari með tilliti til URL; gögn sótt í response.', false, 11);
INSERT INTO answers (answer, is_correct, question_id) VALUES ('Búið til `fetch` request kall sem tilgreinir að minnsta kosti URL; villuathugun á kalli og svari með tilliti til HTTP; gögn sótt í response með villuathugun.', true, 11);
