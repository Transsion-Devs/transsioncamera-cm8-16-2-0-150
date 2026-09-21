.class public Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private _name:Ljava/lang/String;

.field private file_url:Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;

.field private name:Ljava/lang/String;

.field private name_sec:Ljava/lang/String;

.field private status:I

.field private totalSize:J

.field private type:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 12

    .line 0
    const/16 v9, 0x7f

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;JIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;JII)V
    .registers 10

    const-string v0, "_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name_sec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "version"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->_name:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->name_sec:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->version:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->file_url:Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;

    iput-wide p5, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->totalSize:J

    iput p7, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->type:I

    iput p8, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->status:I

    .line 23
    const-string p1, ""

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;JIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p10, p9, 0x1

    const-string v0, ""

    if-eqz p10, :cond_7

    move-object p1, v0

    :cond_7
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_c

    move-object p2, v0

    :cond_c
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_11

    move-object p3, v0

    :cond_11
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_16

    const/4 p4, 0x0

    :cond_16
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_1c

    const-wide/16 p5, 0x0

    :cond_1c
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_21

    const/4 p7, 0x0

    :cond_21
    and-int/lit8 p9, p9, 0x40

    if-eqz p9, :cond_26

    const/4 p8, 0x1

    .line 21
    :cond_26
    invoke-direct/range {p0 .. p8}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;JII)V

    return-void
.end method


# virtual methods
.method public getFile_url()Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->file_url:Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 25
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->_name:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getName_sec()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 26
    sget-object v0, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;->INSTANCE:Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectPlatformEncryptor;->getEncryptor()Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getName_sec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/ugc/effectplatform/IEffectPlatformEncryptor;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    goto :goto_27

    :cond_25
    const-string v0, ""

    :goto_27
    iput-object v0, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->_name:Ljava/lang/String;

    .line 28
    :cond_29
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->_name:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 29
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->name:Ljava/lang/String;

    return-object p0

    .line 31
    :cond_34
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->_name:Ljava/lang/String;

    return-object p0
.end method

.method public getName_sec()Ljava/lang/String;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->name_sec:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .registers 1

    .line 21
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->status:I

    return p0
.end method

.method public getTotalSize()J
    .registers 3

    .line 19
    iget-wide v0, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->totalSize:J

    return-wide v0
.end method

.method public getType()I
    .registers 1

    .line 20
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->type:I

    return p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->version:Ljava/lang/String;

    return-object p0
.end method

.method public setFile_url(Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->file_url:Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setName_sec(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->name_sec:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .line 21
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->status:I

    return-void
.end method

.method public setTotalSize(J)V
    .registers 3

    .line 19
    iput-wide p1, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->totalSize:J

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 20
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->type:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->version:Ljava/lang/String;

    return-void
.end method
