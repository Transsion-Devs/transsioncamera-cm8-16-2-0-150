.class public Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/SceneRepo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureScenes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;

    sget v2, Lcom/transsion/camera/feature/longexposure/R$string;->long_exposure_scene_star:I

    sget v3, Lcom/transsion/camera/feature/longexposure/R$drawable;->long_exposure_scene_star:I

    const-string v4, "star"

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;

    sget v2, Lcom/transsion/camera/feature/longexposure/R$string;->long_exposure_scene_stellar_track:I

    sget v3, Lcom/transsion/camera/feature/longexposure/R$drawable;->long_exposure_scene_stellar_track:I

    const-string v4, "stellartrack"

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;

    sget v2, Lcom/transsion/camera/feature/longexposure/R$string;->long_exposure_scene_traffic:I

    sget v3, Lcom/transsion/camera/feature/longexposure/R$drawable;->long_exposure_scene_traffic:I

    const-string/jumbo v4, "traffic"

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;

    sget v2, Lcom/transsion/camera/feature/longexposure/R$string;->long_exposure_scene_flowing_water:I

    sget v3, Lcom/transsion/camera/feature/longexposure/R$drawable;->long_exposure_scene_flowing_water:I

    const-string v4, "flowingwater"

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;

    sget v2, Lcom/transsion/camera/feature/longexposure/R$string;->long_exposure_scene_light_painting:I

    sget v3, Lcom/transsion/camera/feature/longexposure/R$drawable;->long_exposure_scene_light_painting:I

    const-string v4, "lightpainting"

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
