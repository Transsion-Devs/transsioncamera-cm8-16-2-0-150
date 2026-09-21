.class abstract synthetic Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As:[I

.field static final synthetic $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 304
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->values()[Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->DEDUCTION:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id:[I

    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id:[I

    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->MINIMAL_CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id:[I

    sget-object v5, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NAME:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    const/4 v4, 0x5

    :try_start_34
    sget-object v5, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id:[I

    sget-object v6, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NONE:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v5, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id:[I

    sget-object v6, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->CUSTOM:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    .line 120
    :catch_49
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->values()[Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As:[I

    :try_start_52
    sget-object v6, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5a
    sget-object v1, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As:[I

    sget-object v5, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_64

    :catch_64
    :try_start_64
    sget-object v0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As:[I

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_OBJECT:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6e
    sget-object v0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As:[I

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As:[I

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXISTING_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_82} :catch_82

    :catch_82
    return-void
.end method
