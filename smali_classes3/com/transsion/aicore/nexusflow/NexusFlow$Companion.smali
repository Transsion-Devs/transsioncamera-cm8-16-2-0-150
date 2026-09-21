.class public final Lcom/transsion/aicore/nexusflow/NexusFlow$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/nexusflow/NexusFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/aicore/nexusflow/NexusFlow$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final setLogLevel(Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string p0, "level"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p1}, Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->setLogLevel(I)V

    return-void
.end method
