.class Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;


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

    .line 1283
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$10;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideBottomPanelByConflict()V
    .registers 2

    .line 1286
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$10;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->-$$Nest$mhide(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;Z)V

    return-void
.end method
