.class public final Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublicConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublicConfig;

.field private static enableLogAsync:Z

.field private static logLevel:Lcom/bytedance/ies/nle/editor_jni/LogLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublicConfig;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublicConfig;-><init>()V

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublicConfig;->INSTANCE:Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublicConfig;

    const/4 v0, 0x1

    .line 11
    sput-boolean v0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublicConfig;->enableLogAsync:Z

    .line 12
    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_INFO:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublicConfig;->logLevel:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnableLogAsync()Z
    .registers 1

    .line 11
    sget-boolean p0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublicConfig;->enableLogAsync:Z

    return p0
.end method

.method public final getLogLevel()Lcom/bytedance/ies/nle/editor_jni/LogLevel;
    .registers 1

    .line 12
    sget-object p0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublicConfig;->logLevel:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    return-object p0
.end method

.method public final setEnableLogAsync(Z)V
    .registers 2

    .line 11
    sput-boolean p1, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublicConfig;->enableLogAsync:Z

    return-void
.end method

.method public final setLogLevel(Lcom/bytedance/ies/nle/editor_jni/LogLevel;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sput-object p1, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublicConfig;->logLevel:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    return-void
.end method
