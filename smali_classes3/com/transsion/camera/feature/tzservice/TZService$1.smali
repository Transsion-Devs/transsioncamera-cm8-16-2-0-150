.class Lcom/transsion/camera/feature/tzservice/TZService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/tzservice/TZService;->linkToDeath(Lcom/transsion/camera/feature/tzservice/TZService$HwBinderDeathRecipient;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/tzservice/TZService;

.field final synthetic val$arg0:Lcom/transsion/camera/feature/tzservice/TZService$HwBinderDeathRecipient;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/tzservice/TZService;Lcom/transsion/camera/feature/tzservice/TZService$HwBinderDeathRecipient;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/feature/tzservice/TZService$1;->this$0:Lcom/transsion/camera/feature/tzservice/TZService;

    iput-object p2, p0, Lcom/transsion/camera/feature/tzservice/TZService$1;->val$arg0:Lcom/transsion/camera/feature/tzservice/TZService$HwBinderDeathRecipient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZService$1;->val$arg0:Lcom/transsion/camera/feature/tzservice/TZService$HwBinderDeathRecipient;

    invoke-interface {p0}, Lcom/transsion/camera/feature/tzservice/TZService$HwBinderDeathRecipient;->serviceDied()V

    return-void
.end method
