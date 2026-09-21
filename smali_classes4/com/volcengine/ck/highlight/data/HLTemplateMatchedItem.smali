.class public final Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final extractorResult:Lcom/volcengine/ck/highlight/data/HLExtractorResult;

.field private final media:Lcom/volcengine/ck/highlight/data/RecognizeMedia;


# direct methods
.method public constructor <init>(Lcom/volcengine/ck/highlight/data/RecognizeMedia;Lcom/volcengine/ck/highlight/data/HLExtractorResult;)V
    .registers 4

    const-string v0, "media"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extractorResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;->media:Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    .line 17
    iput-object p2, p0, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;->extractorResult:Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    return-void
.end method

.method public static synthetic copy$default(Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;Lcom/volcengine/ck/highlight/data/RecognizeMedia;Lcom/volcengine/ck/highlight/data/HLExtractorResult;ILjava/lang/Object;)Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;->media:Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;->extractorResult:Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;->copy(Lcom/volcengine/ck/highlight/data/RecognizeMedia;Lcom/volcengine/ck/highlight/data/HLExtractorResult;)Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/volcengine/ck/highlight/data/RecognizeMedia;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;->media:Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    return-object p0
.end method

.method public final component2()Lcom/volcengine/ck/highlight/data/HLExtractorResult;
    .registers 1

    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;->extractorResult:Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    return-object p0
.end method

.method public final copy(Lcom/volcengine/ck/highlight/data/RecognizeMedia;Lcom/volcengine/ck/highlight/data/HLExtractorResult;)Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;
    .registers 3

    const-string p0, "media"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "extractorResult"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;

    invoke-direct {p0, p1, p2}, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;-><init>(Lcom/volcengine/ck/highlight/data/RecognizeMedia;Lcom/volcengine/ck/highlight/data/HLExtractorResult;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;

    iget-object v1, p0, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;->media:Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    iget-object v3, p1, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;->media:Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;->extractorResult:Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    iget-object p1, p1, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;->extractorResult:Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getExtractorResult()Lcom/volcengine/ck/highlight/data/HLExtractorResult;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;->extractorResult:Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    return-object p0
.end method

.method public final getMedia()Lcom/volcengine/ck/highlight/data/RecognizeMedia;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;->media:Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;->media:Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    invoke-virtual {v0}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;->extractorResult:Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HLTemplateMatchedItem(media="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;->media:Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extractorResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;->extractorResult:Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
