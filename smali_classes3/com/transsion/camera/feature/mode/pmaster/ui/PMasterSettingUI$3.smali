.class Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$SeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$3;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(IZ)V
    .registers 3

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$3;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->-$$Nest$fgetmBottomUI(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->progressChanged(I)V

    return-void
.end method
