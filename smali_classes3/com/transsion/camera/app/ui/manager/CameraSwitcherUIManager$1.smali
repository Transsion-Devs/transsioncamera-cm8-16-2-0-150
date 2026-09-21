.class Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 142
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->doOnStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
