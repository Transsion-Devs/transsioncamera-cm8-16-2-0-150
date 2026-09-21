.class public final synthetic Lcom/volcengine/ck/highlight/helper/HLExtractHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEFrameAvailableListener;


# instance fields
.field public final synthetic f$0:Lcom/volcengine/ck/highlight/helper/HLExtractHelper;

.field public final synthetic f$1:Lcom/volcengine/ck/highlight/data/RecognizeMedia;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/volcengine/ck/highlight/helper/HLExtractHelper;Lcom/volcengine/ck/highlight/data/RecognizeMedia;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper$$ExternalSyntheticLambda0;->f$0:Lcom/volcengine/ck/highlight/helper/HLExtractHelper;

    iput-object p2, p0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper$$ExternalSyntheticLambda0;->f$1:Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    iput-object p3, p0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final processFrame(Ljava/nio/ByteBuffer;III)Z
    .registers 12

    .line 0
    iget-object v0, p0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper$$ExternalSyntheticLambda0;->f$0:Lcom/volcengine/ck/highlight/helper/HLExtractHelper;

    iget-object v1, p0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper$$ExternalSyntheticLambda0;->f$1:Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    iget-object v2, p0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->$r8$lambda$cPtLGRvaWOMK4Yc1IKjmlDwAMs4(Lcom/volcengine/ck/highlight/helper/HLExtractHelper;Lcom/volcengine/ck/highlight/data/RecognizeMedia;Ljava/util/List;Ljava/nio/ByteBuffer;III)Z

    move-result p0

    return p0
.end method
