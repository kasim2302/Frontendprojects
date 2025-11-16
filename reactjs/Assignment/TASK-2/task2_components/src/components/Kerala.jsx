import "../assets/css/style.css";

const Kerala = () => {
  return (
    <>
    <div className="kerala">
      <Festivals />
      <Tourism/>
    </div>
      
    </>
  );
};
export default Kerala;

export const Festivals = () => {
  return (
    <>
      <div className="festivals">
        <div>
          <h2>Festivals in kerala</h2>
        </div>
        <div>
          <p>
            Kerala has numerous festivals, with Onam being the most prominent, a
            10-day harvest festival celebrating the homecoming of King Mahabali
            through traditions like flower carpets (pookalams), grand feasts
            (sadyas), and cultural competitions. Other major festivals include
            Thrissur Pooram, a spectacular temple festival in Thrissur known for
            its decorated elephants and fireworks, and Vishu, the Malayali New
            Year, which features firecrackers and special feasts. Theyyam is
            also a notable event, celebrated as a vibrant ritualistic
            performance art in northern Kerala.
          </p>
        </div>
      </div>
    </>
  );
};

export const Tourism = () => {
  return (
    <>
      <div className="tourism">
        <div>
          <h2>Tourism in Kerala</h2>
        </div>
        <div>
          <p>
            Kerala's tourism is known for its natural beauty, including lush
            hills, backwaters, and beaches, earning it the nickname "God's Own
            Country". The state attracts both domestic and international
            visitors with its picturesque landscapes, vibrant cultural
            festivals, wildlife sanctuaries, and historical sites. Key
            attractions include the backwaters of Alappuzha, the hills of
            Munnar, and a focus on ecotourism, handicrafts, and wellness.
          </p>
        </div>
      </div>
      <TouristPlace/>
    </>
  )
}

export const TouristPlace = () => {
    return(
        <>
        <div className="place">
          <div>
            <h2>Tourist Places in Kerala</h2>
          </div>
          <div>
            <ul>
                <li>Allepey</li>
                <li>Waynad</li>
                <li>Varkala</li>
                <li>Kozhikode</li>
                <li>Thekkady</li>
                <li>Munnar</li>
            </ul>
          </div>
        </div>
        </>
    )
}
