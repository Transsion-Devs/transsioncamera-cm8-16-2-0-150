.class public final Lcom/transsion/aicore/nexusflow/callback/CallbackFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/transsion/aicore/nexusflow/callback/CallbackFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/transsion/aicore/nexusflow/callback/CallbackFactory;

    invoke-direct {v0}, Lcom/transsion/aicore/nexusflow/callback/CallbackFactory;-><init>()V

    sput-object v0, Lcom/transsion/aicore/nexusflow/callback/CallbackFactory;->INSTANCE:Lcom/transsion/aicore/nexusflow/callback/CallbackFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic createAsyncWrapperCallback$default(Lcom/transsion/aicore/nexusflow/callback/CallbackFactory;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowCallback;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/aicore/nexusflow/FlowCallback;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_6

    .line 1
    const-string p3, "ASYNC"

    .line 2
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/aicore/nexusflow/callback/CallbackFactory;->createAsyncWrapperCallback(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowCallback;Ljava/lang/String;)Lcom/transsion/aicore/nexusflow/FlowCallback;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createAsyncWrapperCallback(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowCallback;Ljava/lang/String;)Lcom/transsion/aicore/nexusflow/FlowCallback;
    .registers 4

    const-string p0, "flowId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "debugTag"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Lcom/transsion/aicore/nexusflow/callback/CallbackFactory$createAsyncWrapperCallback$1;

    invoke-direct {p0, p3, p2}, Lcom/transsion/aicore/nexusflow/callback/CallbackFactory$createAsyncWrapperCallback$1;-><init>(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowCallback;)V

    return-object p0
.end method

.method public final createSyncInternalCallback(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/transsion/aicore/nexusflow/FlowCallback;
    .registers 4

    const-string p0, "flowId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Lcom/transsion/aicore/nexusflow/callback/CallbackFactory$createSyncInternalCallback$1;

    invoke-direct {p0, p2, p3}, Lcom/transsion/aicore/nexusflow/callback/CallbackFactory$createSyncInternalCallback$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object p0
.end method
