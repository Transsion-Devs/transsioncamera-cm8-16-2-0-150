.class public Lcom/ss/android/vesdk/lens/VEModelDownload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/lens/VEModelDownload$IModelDownload;,
        Lcom/ss/android/vesdk/lens/VEModelDownload$VEModelDownloadCallback;
    }
.end annotation


# static fields
.field public static final MODELNAME_TAINT_SCENE_DETECT:Ljava/lang/String; = "lens_taint_scene_detect"

.field public static final REQUIREMENT_TAINT_SCENE_DETECT_MODEL:Ljava/lang/String; = "TaintSceneDetectModel"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
