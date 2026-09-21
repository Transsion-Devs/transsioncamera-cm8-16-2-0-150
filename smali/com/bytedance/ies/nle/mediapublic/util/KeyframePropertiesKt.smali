.class public final Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DOUBLE:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

.field private static final DEFAULT_FLOAT:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

.field private static final DEFAULT_INT:Lcom/bytedance/ies/nle/mediapublic/util/IntValue;

.field private static final DEFAULT_LONG:Lcom/bytedance/ies/nle/mediapublic/util/LongValue;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 18
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;-><init>(D)V

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    .line 20
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;-><init>(F)V

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_FLOAT:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    .line 22
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/util/IntValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/nle/mediapublic/util/IntValue;-><init>(I)V

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_INT:Lcom/bytedance/ies/nle/mediapublic/util/IntValue;

    .line 24
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/util/LongValue;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/nle/mediapublic/util/LongValue;-><init>(J)V

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_LONG:Lcom/bytedance/ies/nle/mediapublic/util/LongValue;

    return-void
.end method

.method public static final synthetic access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;
    .registers 1

    .line 1
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/nle/mediapublic/util/DoubleValue;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_FLOAT$p()Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;
    .registers 1

    .line 1
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_FLOAT:Lcom/bytedance/ies/nle/mediapublic/util/FloatValue;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_LONG$p()Lcom/bytedance/ies/nle/mediapublic/util/LongValue;
    .registers 1

    .line 1
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/KeyframePropertiesKt;->DEFAULT_LONG:Lcom/bytedance/ies/nle/mediapublic/util/LongValue;

    return-object v0
.end method
