.class Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;)V
    .registers 3

    .line 343
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 344
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 349
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;

    if-nez p0, :cond_b

    goto :goto_14

    .line 353
    :cond_b
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_14

    .line 354
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;->-$$Nest$mhidePop3SettingTitle(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI5;)V

    :cond_14
    :goto_14
    return-void
.end method
