.class Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$SettingChangeCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingChangeCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;)V
    .registers 2

    .line 420
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$SettingChangeCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$SettingChangeCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 3

    .line 424
    check-cast p1, [Ljava/lang/String;

    .line 425
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$SettingChangeCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->-$$Nest$mupdateUIWhenSettingChange(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;[Ljava/lang/String;)V

    return-void
.end method
