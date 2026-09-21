.class Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI$SettingDataCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingDataCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI$SettingDataCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI$SettingDataCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 5

    .line 45
    instance-of p2, p1, Ljava/lang/Boolean;

    if-nez p2, :cond_e

    .line 46
    invoke-static {}, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "illegal argument"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 50
    :cond_e
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 52
    invoke-static {}, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataCallback shouldShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_34

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI$SettingDataCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->showScreenFlashView()V

    return-void

    .line 57
    :cond_34
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI$SettingDataCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->hideScreenFlashView()V

    return-void
.end method
