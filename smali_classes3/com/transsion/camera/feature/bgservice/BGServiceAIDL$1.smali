.class Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;->linkToDeath(Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$HwBinderDeathRecipient;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;

.field final synthetic val$arg0:Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$HwBinderDeathRecipient;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$HwBinderDeathRecipient;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$1;->this$0:Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;

    iput-object p2, p0, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$1;->val$arg0:Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$HwBinderDeathRecipient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$1;->val$arg0:Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$HwBinderDeathRecipient;

    invoke-interface {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$HwBinderDeathRecipient;->serviceDied()V

    return-void
.end method
