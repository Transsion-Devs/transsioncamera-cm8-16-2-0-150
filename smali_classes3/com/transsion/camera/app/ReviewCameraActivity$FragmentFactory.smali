.class abstract Lcom/transsion/camera/app/ReviewCameraActivity$FragmentFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ReviewCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FragmentFactory"
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smcreate(Landroid/content/Intent;)Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/app/ReviewCameraActivity$FragmentFactory;->create(Landroid/content/Intent;)Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    move-result-object p0

    return-object p0
.end method

.method private static create(Landroid/content/Intent;)Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;
    .registers 4

    .line 231
    const-string v0, "review_fragment"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 232
    const-string v0, "fun_video"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 233
    const-string p0, "com.transsion.camera.feature.funvideo.ui.FunVideoReviewFragment"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    return-object p0

    .line 234
    :cond_1a
    const-string v0, "movie"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 235
    const-string p0, "com.transsion.camera.feature.mode.movie.ui.review.MovieReviewFragment"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    return-object p0

    .line 236
    :cond_2d
    const-string v0, "movie_playback"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 237
    const-string p0, "com.transsion.camera.feature.mode.movie.ui.review.MoviePlaybackFragment"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    return-object p0

    .line 238
    :cond_40
    const-string v0, "arcore"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 239
    const-string p0, "com.transsion.camera.feature.arcore.common.fragments.ARCoreReviewFragment"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    return-object p0

    .line 240
    :cond_53
    const-string/jumbo v0, "vlog_editor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 241
    const-string p0, "com.transsion.camera.feature.mode.vlog.editor.VlogEditorFragment"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    return-object p0

    .line 242
    :cond_67
    const-string v0, "ai"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 243
    const-string p0, "com.transsion.camera.featurelibs.aicommon.ui.request.AIFragment"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    return-object p0

    .line 245
    :cond_7a
    invoke-static {}, Lcom/transsion/camera/app/ReviewCameraActivity;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal fragment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
