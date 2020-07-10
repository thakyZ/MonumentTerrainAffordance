using HarmonyLib;
using RimWorld;
using RimWorld.SketchGen;
using System.Reflection;
using Verse;

namespace NekoBoiNick.MonumentTerrainAffordance
{
  [StaticConstructorOnStartup]
  class Main
  {
    static Main()
    {
      new Harmony("nekoboinick.vanilla.monumentterrainaffordance").PatchAll(Assembly.GetExecutingAssembly());
      Log.Message("Monument Terrain Affordance Patch initialized. This mod uses Harmony (all patches are non-destructive): RimWorld.SketchGen.SketchGenUtility.IsFloorAllowed_NewTmp", false);
    }
  }

  [HarmonyPatch(typeof(SketchGenUtility), "IsFloorAllowed_NewTmp", null)]
  class MonumentTerrainAffordance
  {
    [HarmonyPostfix]
    static bool IsFloorAllowed_NewTmp(bool __result, TerrainDef floor, bool allowWoodenFloor, bool allowConcrete, Map useOnlyStonesAvailableOnMap, bool onlyBuildableByPlayer, bool onlyStoneFloor)
    {
      if (__result == true)
      {
        if (floor.terrainAffordanceNeeded != TerrainAffordanceDefOf.Light && floor.terrainAffordanceNeeded != TerrainAffordanceDefOf.Medium && floor.terrainAffordanceNeeded != TerrainAffordanceDefOf.Heavy)
        {
          return false;
        }
      }
      return __result;
    }
  }
}