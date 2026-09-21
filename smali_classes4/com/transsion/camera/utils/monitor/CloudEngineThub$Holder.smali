.class abstract Lcom/transsion/camera/utils/monitor/CloudEngineThub$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/monitor/CloudEngineThub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/camera/utils/monitor/CloudEngineThub;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/transsion/camera/utils/monitor/CloudEngineThub;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/utils/monitor/CloudEngineThub$Holder;->INSTANCE:Lcom/transsion/camera/utils/monitor/CloudEngineThub;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/monitor/CloudEngineThub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/monitor/CloudEngineThub;-><init>(Lcom/transsion/camera/utils/monitor/CloudEngineThub-IA;)V

    sput-object v0, Lcom/transsion/camera/utils/monitor/CloudEngineThub$Holder;->INSTANCE:Lcom/transsion/camera/utils/monitor/CloudEngineThub;

    return-void
.end method
