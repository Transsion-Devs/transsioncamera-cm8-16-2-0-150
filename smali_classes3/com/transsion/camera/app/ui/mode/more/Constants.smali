.class public abstract Lcom/transsion/camera/app/ui/mode/more/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MORE_MODE_NOT_SUPPORT_DRAG_DROP_LIST:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    const-string v11, "com.transsion.camera.feature.mode.facebeauty.FaceBeautyModeEntry"

    const-string v12, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    const-string v2, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    const-string v3, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    const-string v4, "com.transsion.camera.feature.mode.makeup.MakeUpModeEntry"

    const-string v5, "com.transsion.camera.feature.mode.litefacebeauty.LiteFaceBeautyModeEntry"

    const-string v6, "com.transsion.camera.feature.mode.vsdof.SdofPhotoModeEntry"

    const-string v7, "com.transsion.camera.feature.mode.vsdof.BackSdofPhotoModeEntry"

    const-string v8, "com.transsion.camera.feature.mode.stblurmode.BackSTBlurModeEntry"

    const-string v9, "com.transsion.camera.feature.mode.stblurmode.STBlurModeEntry"

    const-string v10, "com.transsion.camera.feature.mode.bwportrait.BWPortraitModeEntry"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/more/Constants;->MORE_MODE_NOT_SUPPORT_DRAG_DROP_LIST:Ljava/util/List;

    return-void
.end method

.method public static isNotSupportDragDropPosition(ILcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)Z
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 47
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    sget-object v1, Lcom/transsion/camera/app/ui/mode/more/Constants;->MORE_MODE_NOT_SUPPORT_DRAG_DROP_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 51
    :cond_27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
