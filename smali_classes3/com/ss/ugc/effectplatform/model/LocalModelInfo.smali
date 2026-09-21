.class public final Lcom/ss/ugc/effectplatform/model/LocalModelInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;


# instance fields
.field private builtIn:Z

.field private final filePath:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private size:I

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->Companion:Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->filePath:Ljava/lang/String;

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->size:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getBuiltIn()Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->builtIn:Z

    return p0
.end method

.method public final getFilePath()Ljava/lang/String;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getMD5()Ljava/lang/String;
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->md5:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 70
    :cond_a
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbytekn/foundation/io/file/FileManager;->fileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 72
    sget-object v1, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {v1, v0}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getMD5OfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->md5:Ljava/lang/String;

    .line 75
    :cond_1c
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->md5:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 3

    .line 20
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 21
    :cond_a
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbytekn/foundation/io/file/FileManager;->fileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 23
    sget-object v1, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {v1, v0}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getNameOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->name:Ljava/lang/String;

    .line 26
    :cond_1c
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()I
    .registers 4

    .line 48
    iget v0, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_22

    .line 49
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbytekn/foundation/io/file/FileManager;->exists(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    goto :goto_20

    .line 53
    :cond_11
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbytekn/foundation/io/file/FileManager;->fileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_20

    .line 57
    :cond_1a
    sget-object v1, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-virtual {v1, v0}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->getSizeOfModel(Ljava/lang/String;)I

    move-result v2

    .line 49
    :goto_20
    iput v2, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->size:I

    .line 61
    :cond_22
    iget p0, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->size:I

    return p0
.end method

.method public final getVersion()Ljava/lang/String;
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->version:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 35
    :cond_a
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbytekn/foundation/io/file/FileManager;->fileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 37
    sget-object v1, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->Companion:Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;

    # invokes: Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;->getVersionOfModel(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;->access$getVersionOfModel(Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->version:Ljava/lang/String;

    .line 40
    :cond_1c
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->version:Ljava/lang/String;

    return-object p0
.end method

.method public final setBuiltIn(Z)V
    .registers 2

    .line 17
    iput-boolean p1, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->builtIn:Z

    return-void
.end method

.method public final setMD5(Ljava/lang/String;)V
    .registers 3

    const-string v0, "md5"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->md5:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public final setSize(I)V
    .registers 2

    .line 65
    iput p1, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->size:I

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalModelInfo{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;->getSize()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
