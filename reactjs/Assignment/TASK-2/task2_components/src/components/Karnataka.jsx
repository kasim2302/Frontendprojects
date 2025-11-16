import "../assets/css/style.css";

const Karnataka = () => {
  return (
    <>
      <div className="karnataka">
        <Cinemas />
        <Traditional/>
      </div>
    </>
  );
};
export default Karnataka;

export const Cinemas = () => {
  return (
    <>
      <div className="cinemas">
        <div>
          <h2>The Karnataka Cinemas</h2>
        </div>
        <div>
          <p>
            Cinemas in Karnataka include both traditional single-screen theaters
            and modern multiplexes like PVR, Cinepolis, and INOX. They show
            films from the state's prolific Kannada film industry, known as
            Sandalwood, which is a major part of India's cinema culture. The
            state has a large number of cinemas, with over 368 theaters listed
            in one source, offering a wide range of movie-watching experiences
            for the public
          </p>
        </div>
      </div>
      <LoveMovies />
      <Actionmovies />
      <MostWatched />
    </>
  );
};

export const LoveMovies = () => {
  return (
    <>
      <div className="lovemovies">
        <div>
          <h2>Love Movies</h2>
        </div>
        <div>
          <p>
            Kannada love movies, also known as Sandalwood romance films, explore
            various romantic themes, from epic love stories in picturesque
            settings to realistic college romances and stories that overcome
            societal barriers. Classic films like Mungaru Male are celebrated
            for their romantic settings, while modern movies like Googly and
            Ananthu V/s Nusrath delve into more contemporary love stories with
            relatable characters and situations.
          </p>
        </div>
      </div>
    </>
  );
};

export const Actionmovies = () => {
  return (
    <>
      <div className="actionmovie">
        <div>
          <h2>Action Movies</h2>
        </div>
        <div>
          <p>
            Kannada action movies in Karnataka often feature high-octane
            thrillers with compelling plots, such as the upcoming films like
            Kantara A Legend: Chapter 1 and Lokah Chapter One: Chandra. Recent
            examples include Kaatera, about a man fighting injustice, and
            Mahavatar Narsimha, which depicts a war between a demon king and
            Lord Vishnu. The genre is diverse, ranging from revenge stories like
            They Call Him OG to undercover cop thrillers such as Mufti.
          </p>
        </div>
      </div>
    </>
  );
};

export const MostWatched = () => {
  return (
    <>
      <div className="mostwatch">
        <div>
          <h2>Most Watched Movie in Karnataka Cinema</h2>
        </div>
        <div>
          <p>
            The most viewed movies in Karnataka, based on box office gross, are
            Kantara: Chapter 1 and K.G.F: Chapter 2. While Kantara: Chapter 1
            has recently overtaken K.G.F: Chapter 2 as the highest-grossing film
            in Karnataka, both have achieved massive viewership and success
            within the state.
          </p>
        </div>
      </div>
    </>
  );
};

export const Traditional = () => {
  return (
    <>
      <div className="traditional">
        <div>
          <h2>Traditionals in Karnataka</h2>
        </div>
        <div>
          <p>
            Traditional Karnataka is a rich tapestry of customs, reflected in
            its vibrant cuisine (like food on banana leaves), clothing
            (including sarees, dhoti, and the Mysore peta), and handicrafts
            (such as Channapatna toys, sandalwood carvings, and bidri ware). It
            also has a rich tradition of performing arts, with numerous folk art
            forms, and significant historical sites like Hampi.
          </p>
        </div>
      </div>
    </>
  );
};
