.class final Lcom/volcengine/ck/highlight/helper/HLExtractHelper$vecAlgorithmType$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/volcengine/ck/highlight/helper/HLExtractHelper;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;Lcom/volcengine/ck/highlight/config/HLSDKConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/volcengine/ck/highlight/helper/HLExtractHelper$vecAlgorithmType$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper$vecAlgorithmType$2;

    invoke-direct {v0}, Lcom/volcengine/ck/highlight/helper/HLExtractHelper$vecAlgorithmType$2;-><init>()V

    sput-object v0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper$vecAlgorithmType$2;->INSTANCE:Lcom/volcengine/ck/highlight/helper/HLExtractHelper$vecAlgorithmType$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;
    .registers 2

    .line 46
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;

    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;-><init>()V

    .line 47
    sget-object v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->AFTER_EFFECT:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;->add(Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;)Z

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 45
    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/helper/HLExtractHelper$vecAlgorithmType$2;->invoke()Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;

    move-result-object p0

    return-object p0
.end method
