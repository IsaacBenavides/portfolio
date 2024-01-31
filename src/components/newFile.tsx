import ContentContainer from "./ContentContainer.astro";
import ExperienceContainer from "./ExperienceContainer.astro";

<Fragment>
  <ContentContainer
    className="h-auto min-h-screen bg-slate-800 overflow-hidden"
    id="experience"
  >
    <article class="experience-wrapper relative mx-auto max-w-[120rem] flex flex-col items-center flex-1 h-full gap-10 py-10">
      <section class="to-animate flex flex-col items-center justify-center">
        <span class="text-5xl relative mt-10 block font-semibold mb-4">
          Experience
        </span>
        <span class="text-sm text-slate-400">Companies I have worked for</span>
      </section>

      <section class="w-full px-10 grid grid-cols-12 auto-rows-[260px] md:auto-rows-[500px] gap-3 justify-center relative">
        <ExperienceContainer
          delay="0s"
          className="col-span-12 md:col-span-7 lg:col-span-3"
          image="public/images/queryblocks.svg"
          title="QueryBlocks"
          subtitle="Front-end Developer"
          dates="Nov. 2023 - Currently"
        />
        <ExperienceContainer
          delay=".5s"
          className="col-span-12 md:col-span-5 lg:col-span-3"
          image="public/images/lsv.webp"
          title="LSV-TECH"
          subtitle="FullStack Deverloper"
          dates="Feb. 2022 - Nov 2023"
        />
        <ExperienceContainer
          delay="1s"
          className="col-span-12 md:col-span-5 lg:col-span-3"
          image="public/images/atua.webp"
          title="ATUA"
          subtitle=""
          dates=""
        />
        <ExperienceContainer
          delay="1s"
          className="col-span-12 md:col-span-5 lg:col-span-3"
          image="public/images/lsv.webp"
          title="LSV-TECH"
        />
        <ExperienceContainer
          delay="1.5s"
          className="col-span-12 md:col-span-7 lg:col-span-3"
          image="public/images/freelancer.webp"
          title="FreeLance"
        />
      </section>
    </article>
  </ContentContainer>
</Fragment>;
