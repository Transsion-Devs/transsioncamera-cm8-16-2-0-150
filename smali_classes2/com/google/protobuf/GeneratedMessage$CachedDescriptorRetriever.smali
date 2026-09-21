.class abstract Lcom/google/protobuf/GeneratedMessage$CachedDescriptorRetriever;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CachedDescriptorRetriever"
.end annotation


# instance fields
.field private volatile descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$1;)V
    .registers 2

    .line 1650
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$CachedDescriptorRetriever;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .registers 2

    .line 1657
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$CachedDescriptorRetriever;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    if-nez v0, :cond_16

    .line 1658
    monitor-enter p0

    .line 1659
    :try_start_5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$CachedDescriptorRetriever;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    if-nez v0, :cond_12

    .line 1660
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$CachedDescriptorRetriever;->loadDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$CachedDescriptorRetriever;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    goto :goto_12

    :catchall_10
    move-exception v0

    goto :goto_14

    .line 1662
    :cond_12
    :goto_12
    monitor-exit p0

    goto :goto_16

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_10

    throw v0

    .line 1664
    :cond_16
    :goto_16
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessage$CachedDescriptorRetriever;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    return-object p0
.end method

.method protected abstract loadDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;
.end method
