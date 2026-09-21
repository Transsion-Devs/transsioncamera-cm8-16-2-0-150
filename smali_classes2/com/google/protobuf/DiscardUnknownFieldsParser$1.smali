.class final Lcom/google/protobuf/DiscardUnknownFieldsParser$1;
.super Lcom/google/protobuf/AbstractParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/DiscardUnknownFieldsParser;->wrap(Lcom/google/protobuf/Parser;)Lcom/google/protobuf/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractParser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$parser:Lcom/google/protobuf/Parser;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Parser;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/google/protobuf/DiscardUnknownFieldsParser$1;->val$parser:Lcom/google/protobuf/Parser;

    invoke-direct {p0}, Lcom/google/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .line 60
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->discardUnknownFields()V

    .line 61
    iget-object p0, p0, Lcom/google/protobuf/DiscardUnknownFieldsParser$1;->val$parser:Lcom/google/protobuf/Parser;

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Message;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_f

    .line 63
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->unsetDiscardUnknownFields()V

    return-object p0

    :catchall_f
    move-exception p0

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->unsetDiscardUnknownFields()V

    .line 64
    throw p0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DiscardUnknownFieldsParser$1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    return-object p0
.end method
