.class abstract Lcom/transsion/camera/app/PortraitReviewActivity$FragmentFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/PortraitReviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FragmentFactory"
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smcreate(Landroid/content/Intent;)Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/app/PortraitReviewActivity$FragmentFactory;->create(Landroid/content/Intent;)Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    move-result-object p0

    return-object p0
.end method

.method private static create(Landroid/content/Intent;)Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;
    .registers 4

    .line 221
    const-string v0, "review_fragment"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 222
    const-string/jumbo v0, "vlog_editor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 p0, 0x0

    .line 223
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "com.transsion.camera.feature.mode.vlog.editor.VlogEditorFragment"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;

    return-object p0

    .line 225
    :cond_1b
    invoke-static {}, Lcom/transsion/camera/app/PortraitReviewActivity;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

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
