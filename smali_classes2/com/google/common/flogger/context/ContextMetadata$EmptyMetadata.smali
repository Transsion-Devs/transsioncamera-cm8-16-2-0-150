.class final Lcom/google/common/flogger/context/ContextMetadata$EmptyMetadata;
.super Lcom/google/common/flogger/context/ContextMetadata;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/ContextMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyMetadata"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/flogger/context/ContextMetadata;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 217
    new-instance v0, Lcom/google/common/flogger/context/ContextMetadata$EmptyMetadata;

    invoke-direct {v0}, Lcom/google/common/flogger/context/ContextMetadata$EmptyMetadata;-><init>()V

    sput-object v0, Lcom/google/common/flogger/context/ContextMetadata$EmptyMetadata;->INSTANCE:Lcom/google/common/flogger/context/ContextMetadata;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, v0}, Lcom/google/common/flogger/context/ContextMetadata;-><init>(Lcom/google/common/flogger/context/ContextMetadata$1;)V

    return-void
.end method


# virtual methods
.method public concatenate(Lcom/google/common/flogger/context/ContextMetadata;)Lcom/google/common/flogger/context/ContextMetadata;
    .registers 2

    return-object p1
.end method

.method public findValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 232
    invoke-virtual {p1}, Lcom/google/common/flogger/MetadataKey;->canRepeat()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string p1, "metadata key must be single valued"

    invoke-static {p0, p1}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method get(I)Lcom/google/common/flogger/context/ContextMetadata$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/flogger/context/ContextMetadata$Entry<",
            "*>;"
        }
    .end annotation

    .line 226
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public size()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
