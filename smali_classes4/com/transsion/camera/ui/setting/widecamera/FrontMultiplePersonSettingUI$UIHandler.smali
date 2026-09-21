.class Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)V
    .registers 3

    .line 53
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;

    if-nez p0, :cond_25

    .line 61
    invoke-static {}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage ui is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 65
    :cond_25
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    if-eqz p1, :cond_42

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2e

    return-void

    .line 71
    :cond_2e
    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->access$100(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->-$$Nest$fgetmResources(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/camera/R$drawable;->ic_front_multiple_person_on:I

    .line 72
    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 71
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 67
    :cond_42
    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->access$000(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->-$$Nest$fgetmResources(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/camera/R$drawable;->ic_front_multiple_ai_selected:I

    .line 68
    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 67
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
