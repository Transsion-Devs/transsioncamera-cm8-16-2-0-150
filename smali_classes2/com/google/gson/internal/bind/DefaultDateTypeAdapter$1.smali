.class Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .registers 4

    .line 69
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Ljava/util/Date;

    const/4 p2, 0x0

    if-ne p0, p1, :cond_12

    .line 70
    new-instance p0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;

    sget-object p1, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->DATE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter;-><init>(Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;IILcom/google/gson/internal/bind/DefaultDateTypeAdapter$1;)V

    return-object p0

    :cond_12
    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 78
    const-string p0, "DefaultDateTypeAdapter#DEFAULT_STYLE_FACTORY"

    return-object p0
.end method
