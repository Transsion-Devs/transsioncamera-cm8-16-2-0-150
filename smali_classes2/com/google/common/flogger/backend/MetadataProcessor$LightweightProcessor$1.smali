.class Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Lcom/google/common/flogger/MetadataKey<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;


# direct methods
.method constructor <init>(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1;->this$0:Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;>;"
        }
    .end annotation

    .line 249
    new-instance v0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1$1;

    invoke-direct {v0, p0}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1$1;-><init>(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1;)V

    return-object v0
.end method

.method public size()I
    .registers 1

    .line 244
    iget-object p0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1;->this$0:Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;

    # getter for: Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyCount:I
    invoke-static {p0}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->access$300(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;)I

    move-result p0

    return p0
.end method
