.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickModeIconImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyClickModeIconImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .registers 2

    .line 1503
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickModeIconImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickModeIconImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    return-void
.end method


# virtual methods
.method public notifyClickModeIcon()V
    .registers 2

    .line 1506
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickModeIconImpl;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fputmClickModeIcon(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)V

    return-void
.end method
