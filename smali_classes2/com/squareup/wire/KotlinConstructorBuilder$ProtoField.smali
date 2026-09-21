.class final Lcom/squareup/wire/KotlinConstructorBuilder$ProtoField;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/KotlinConstructorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoField"
.end annotation


# instance fields
.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final wireField:Lcom/squareup/wire/WireField;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/squareup/wire/WireField;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/squareup/wire/WireField;",
            ")V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wireField"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/squareup/wire/KotlinConstructorBuilder$ProtoField;->type:Ljava/lang/Class;

    .line 125
    iput-object p2, p0, Lcom/squareup/wire/KotlinConstructorBuilder$ProtoField;->wireField:Lcom/squareup/wire/WireField;

    return-void
.end method


# virtual methods
.method public final getType()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 124
    iget-object p0, p0, Lcom/squareup/wire/KotlinConstructorBuilder$ProtoField;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public final getWireField()Lcom/squareup/wire/WireField;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/squareup/wire/KotlinConstructorBuilder$ProtoField;->wireField:Lcom/squareup/wire/WireField;

    return-object p0
.end method
