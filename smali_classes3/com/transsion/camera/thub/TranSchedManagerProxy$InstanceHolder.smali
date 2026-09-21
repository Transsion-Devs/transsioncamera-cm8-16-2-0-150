.class abstract Lcom/transsion/camera/thub/TranSchedManagerProxy$InstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/thub/TranSchedManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/camera/thub/TranSchedManagerProxy;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/transsion/camera/thub/TranSchedManagerProxy;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/thub/TranSchedManagerProxy$InstanceHolder;->INSTANCE:Lcom/transsion/camera/thub/TranSchedManagerProxy;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/transsion/camera/thub/TranSchedManagerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;-><init>(Lcom/transsion/camera/thub/TranSchedManagerProxy-IA;)V

    sput-object v0, Lcom/transsion/camera/thub/TranSchedManagerProxy$InstanceHolder;->INSTANCE:Lcom/transsion/camera/thub/TranSchedManagerProxy;

    return-void
.end method
