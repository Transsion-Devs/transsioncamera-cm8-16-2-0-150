.class final Lcom/google/protobuf/NewInstanceSchemaFull;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/NewInstanceSchema;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 36
    check-cast p1, Lcom/google/protobuf/GeneratedMessageV3;

    sget-object p0, Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;->INSTANCE:Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;

    .line 37
    invoke-virtual {p1, p0}, Lcom/google/protobuf/GeneratedMessageV3;->newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
