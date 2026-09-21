.class Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;->linkToDeath(Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$HwBinderDeathRecipient;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;

.field final synthetic val$arg0:Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$HwBinderDeathRecipient;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$HwBinderDeathRecipient;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$1;->this$0:Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;

    iput-object p2, p0, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$1;->val$arg0:Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$HwBinderDeathRecipient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .registers 3

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$1;->val$arg0:Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$HwBinderDeathRecipient;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$HwBinderDeathRecipient;->serviceDied(J)V

    return-void
.end method
