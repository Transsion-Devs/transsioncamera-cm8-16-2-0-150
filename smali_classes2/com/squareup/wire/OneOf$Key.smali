.class public abstract Lcom/squareup/wire/OneOf$Key;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/OneOf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final adapter:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final declaredName:Ljava/lang/String;

.field private final jsonName:Ljava/lang/String;

.field private final redacted:Z

.field private final tag:I


# direct methods
.method public constructor <init>(ILcom/squareup/wire/ProtoAdapter;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TT;>;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "declaredName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput p1, p0, Lcom/squareup/wire/OneOf$Key;->tag:I

    .line 161
    iput-object p2, p0, Lcom/squareup/wire/OneOf$Key;->adapter:Lcom/squareup/wire/ProtoAdapter;

    .line 162
    iput-object p3, p0, Lcom/squareup/wire/OneOf$Key;->declaredName:Ljava/lang/String;

    .line 163
    iput-boolean p4, p0, Lcom/squareup/wire/OneOf$Key;->redacted:Z

    .line 164
    iput-object p5, p0, Lcom/squareup/wire/OneOf$Key;->jsonName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/squareup/wire/ProtoAdapter;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_5

    const/4 p4, 0x0

    :cond_5
    move v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_c

    .line 164
    const-string p5, ""

    :cond_c
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 159
    invoke-direct/range {v0 .. v5}, Lcom/squareup/wire/OneOf$Key;-><init>(ILcom/squareup/wire/ProtoAdapter;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAdapter()Lcom/squareup/wire/ProtoAdapter;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 161
    iget-object p0, p0, Lcom/squareup/wire/OneOf$Key;->adapter:Lcom/squareup/wire/ProtoAdapter;

    return-object p0
.end method

.method public final getDeclaredName()Ljava/lang/String;
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/squareup/wire/OneOf$Key;->declaredName:Ljava/lang/String;

    return-object p0
.end method

.method public final getJsonName()Ljava/lang/String;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/squareup/wire/OneOf$Key;->jsonName:Ljava/lang/String;

    return-object p0
.end method

.method public final getRedacted()Z
    .registers 1

    .line 163
    iget-boolean p0, p0, Lcom/squareup/wire/OneOf$Key;->redacted:Z

    return p0
.end method

.method public final getTag()I
    .registers 1

    .line 160
    iget p0, p0, Lcom/squareup/wire/OneOf$Key;->tag:I

    return p0
.end method
