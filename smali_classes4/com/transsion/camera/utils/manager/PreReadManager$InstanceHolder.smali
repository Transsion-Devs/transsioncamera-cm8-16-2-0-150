.class abstract Lcom/transsion/camera/utils/manager/PreReadManager$InstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/manager/PreReadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/camera/utils/manager/PreReadManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/transsion/camera/utils/manager/PreReadManager;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/utils/manager/PreReadManager$InstanceHolder;->INSTANCE:Lcom/transsion/camera/utils/manager/PreReadManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/manager/PreReadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/manager/PreReadManager;-><init>(Lcom/transsion/camera/utils/manager/PreReadManager-IA;)V

    sput-object v0, Lcom/transsion/camera/utils/manager/PreReadManager$InstanceHolder;->INSTANCE:Lcom/transsion/camera/utils/manager/PreReadManager;

    return-void
.end method
