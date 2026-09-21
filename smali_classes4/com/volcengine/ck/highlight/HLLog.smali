.class public final Lcom/volcengine/ck/highlight/HLLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HLM_MATCH:Ljava/lang/String; = "HLMMatch"

.field public static final HLM_PERF:Ljava/lang/String; = "HLMPerf"

.field public static final INSTANCE:Lcom/volcengine/ck/highlight/HLLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ck/highlight/HLLog;

    invoke-direct {v0}, Lcom/volcengine/ck/highlight/HLLog;-><init>()V

    sput-object v0, Lcom/volcengine/ck/highlight/HLLog;->INSTANCE:Lcom/volcengine/ck/highlight/HLLog;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "content"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object p0, Lcom/volcengine/ck/highlight/HLSDK;->INSTANCE:Lcom/volcengine/ck/highlight/HLSDK;

    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/HLSDK;->getConfig()Lcom/volcengine/ck/highlight/config/HLSDKConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->getLogLevel()I

    move-result p0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_1a

    .line 17
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void
.end method
