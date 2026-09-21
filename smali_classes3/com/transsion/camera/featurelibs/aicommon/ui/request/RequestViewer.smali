.class public Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mChoseGallery:I

.field private final mContext:Landroid/content/Context;

.field private final mGotoGalleryUseAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RequestViewer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->mContext:Landroid/content/Context;

    .line 56
    const-string p1, "goto_gallery_use_animation"

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->mGotoGalleryUseAnimation:Z

    return-void
.end method

.method private getThumbnailViewInfos(Landroid/view/View;F)Ljava/util/ArrayList;
    .registers 8

    const/4 p0, 0x2

    .line 130
    new-array p0, p0, [I

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 136
    aget v1, p0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    .line 137
    aget p0, p0, v2

    int-to-float p0, p0

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getThumbnailViewInfos infoList: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected buildGotoGalleryIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 7

    .line 94
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mUseGooglePhotosDefault:Z

    .line 96
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 97
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getChoseGallery(Landroid/content/pm/PackageManager;Z)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->mChoseGallery:I

    .line 99
    sget-object v2, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gotoGallery useGooglePhotosDefault: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mChoseGallery: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->mChoseGallery:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.REVIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    const-string v2, "image/jpeg"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string p1, "isCamera"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p1

    if-eqz p1, :cond_54

    const/high16 p1, 0x10000000

    .line 107
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_5a

    :cond_54
    const p1, 0x8000

    .line 109
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    :goto_5a
    iget p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->mChoseGallery:I

    if-ne p0, v2, :cond_64

    .line 112
    const-string p0, "com.google.android.apps.photos"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_64
    const/4 p1, 0x2

    if-ne p0, p1, :cond_6d

    .line 114
    const-string p0, "com.google.android.apps.photosgo"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    .line 116
    :cond_6d
    const-string p0, "com.gallery20"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x0

    .line 117
    invoke-virtual {v1, v0, p0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 118
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_81

    const/4 p0, 0x0

    .line 119
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_81
    return-object v0
.end method

.method public gotoGallery(Landroid/net/Uri;Landroid/view/View;F)V
    .registers 8

    .line 60
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoGallery uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_19

    goto :goto_7f

    .line 66
    :cond_19
    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->buildGotoGalleryIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 70
    :try_start_1d
    iget v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->mChoseGallery:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5e

    iget-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->mGotoGalleryUseAnimation:Z

    if-nez v0, :cond_28

    goto :goto_5e

    .line 73
    :cond_28
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isAiGallerySupportSharedAnimation(Landroid/content/Context;)Z

    move-result v0

    if-eqz p2, :cond_55

    .line 74
    iget v3, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->mChoseGallery:I

    if-nez v3, :cond_55

    if-eqz v0, :cond_55

    .line 75
    const-string/jumbo v0, "thumbnail_radius"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 76
    const-string/jumbo v0, "thumbnail_infos"

    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->getThumbnailViewInfos(Landroid/view/View;F)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    div-int/2addr p3, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    .line 77
    invoke-static {p2, p3, v0, v2, v2}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p2

    goto :goto_64

    .line 80
    :cond_55
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->mContext:Landroid/content/Context;

    sget p3, Lcom/transsion/camera/featurelibs/aicommon/R$anim;->ai_activity_anim_in:I

    invoke-static {p2, p3, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p2

    goto :goto_64

    .line 71
    :cond_5e
    :goto_5e
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->mContext:Landroid/content/Context;

    invoke-static {p2, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p2

    .line 85
    :goto_64
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_6d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1d .. :try_end_6d} :catch_77
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_6d} :catch_6e

    return-void

    :catch_6e
    move-exception p0

    .line 89
    sget-object p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[gotoGallery] SecurityException "

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7f

    :catch_77
    move-exception p0

    .line 87
    sget-object p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[gotoGallery] Couldn\'t view "

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7f
    return-void
.end method
