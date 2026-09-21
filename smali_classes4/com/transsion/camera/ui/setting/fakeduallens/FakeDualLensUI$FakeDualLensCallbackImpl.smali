.class Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$FakeDualLensCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FakeDualLensCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$FakeDualLensCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$FakeDualLensCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 3

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$FakeDualLensCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;)Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;

    move-result-object p0

    const/16 p1, 0x64

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
