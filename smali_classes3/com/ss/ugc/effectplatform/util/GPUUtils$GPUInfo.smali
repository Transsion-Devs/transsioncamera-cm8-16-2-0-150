.class final Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/util/GPUUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GPUInfo"
.end annotation


# instance fields
.field private alusOrThroughput:D

.field private glExtension:Ljava/lang/String;

.field private glVer:I

.field private maxFreq:I

.field private minFreq:I

.field private renderer:Ljava/lang/String;

.field private vendor:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->renderer:Ljava/lang/String;

    .line 249
    iput-object v0, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->version:Ljava/lang/String;

    .line 251
    iput-object v0, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->vendor:Ljava/lang/String;

    const/4 v1, -0x1

    .line 257
    iput v1, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->glVer:I

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 259
    iput-wide v1, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->alusOrThroughput:D

    .line 261
    iput-object v0, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->glExtension:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getGlExtension()Ljava/lang/String;
    .registers 1

    .line 261
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->glExtension:Ljava/lang/String;

    return-object p0
.end method

.method public final getRenderer()Ljava/lang/String;
    .registers 1

    .line 247
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->renderer:Ljava/lang/String;

    return-object p0
.end method

.method public final getVendor()Ljava/lang/String;
    .registers 1

    .line 251
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->vendor:Ljava/lang/String;

    return-object p0
.end method

.method public final getVersion()Ljava/lang/String;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->version:Ljava/lang/String;

    return-object p0
.end method

.method public final setAlusOrThroughput(D)V
    .registers 3

    .line 259
    iput-wide p1, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->alusOrThroughput:D

    return-void
.end method

.method public final setGlExtension(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->glExtension:Ljava/lang/String;

    return-void
.end method

.method public final setMaxFreq(I)V
    .registers 2

    .line 253
    iput p1, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->maxFreq:I

    return-void
.end method

.method public final setMinFreq(I)V
    .registers 2

    .line 255
    iput p1, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->minFreq:I

    return-void
.end method

.method public final setRenderer(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->renderer:Ljava/lang/String;

    return-void
.end method

.method public final setVendor(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->vendor:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GPUInfo{renderer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->renderer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", version=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", vendor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->vendor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxFreq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget v1, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->maxFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minFreq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget v1, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->minFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", glVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget v1, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->glVer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alusOrThroughput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-wide v1, p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->alusOrThroughput:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
