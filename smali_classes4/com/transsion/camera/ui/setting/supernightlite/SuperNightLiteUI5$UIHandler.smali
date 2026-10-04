.class Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$UIHandler;
.super Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 207
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->handleMessage(Landroid/os/Message;)V

    .line 208
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->setNightLiteCaptureEnable(Z)V

    :cond_e
    return-void
.end method
