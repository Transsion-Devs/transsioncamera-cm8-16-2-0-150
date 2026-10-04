.class public final Lcom/google/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lcom/google/gson/internal/Excluder;

.field private final factories:Ljava/util/List;

.field private fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

.field private formattingStyle:Lcom/google/gson/FormattingStyle;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;

.field private final instanceCreators:Ljava/util/Map;

.field private longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

.field private numberToNumberStrategy:Lcom/google/gson/ToNumberStrategy;

.field private objectToNumberStrategy:Lcom/google/gson/ToNumberStrategy;

.field private final reflectionFilters:Ljava/util/ArrayDeque;

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private strictness:Lcom/google/gson/Strictness;

.field private timeStyle:I

.field private useJdkUnsafe:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v0, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 95
    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    .line 96
    sget-object v0, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    .line 104
    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_DATE_PATTERN:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    const/4 v1, 0x2

    .line 105
    iput v1, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    .line 106
    iput v1, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    .line 107
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 108
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    const/4 v1, 0x1

    .line 109
    iput-boolean v1, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 110
    sget-object v2, Lcom/google/gson/Gson;->DEFAULT_FORMATTING_STYLE:Lcom/google/gson/FormattingStyle;

    iput-object v2, p0, Lcom/google/gson/GsonBuilder;->formattingStyle:Lcom/google/gson/FormattingStyle;

    .line 111
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 112
    sget-object v0, Lcom/google/gson/Gson;->DEFAULT_STRICTNESS:Lcom/google/gson/Strictness;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->strictness:Lcom/google/gson/Strictness;

    .line 113
    iput-boolean v1, p0, Lcom/google/gson/GsonBuilder;->useJdkUnsafe:Z

    .line 114
    sget-object v0, Lcom/google/gson/Gson;->DEFAULT_OBJECT_TO_NUMBER_STRATEGY:Lcom/google/gson/ToNumberStrategy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->objectToNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    .line 115
    sget-object v0, Lcom/google/gson/Gson;->DEFAULT_NUMBER_TO_NUMBER_STRATEGY:Lcom/google/gson/ToNumberStrategy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->numberToNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    .line 116
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/util/ArrayDeque;

    return-void
.end method

.method private static addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .registers 8

    .line 915
    sget-boolean v0, Lcom/google/gson/internal/sql/SqlTypesSupport;->SUPPORTS_SQL_TYPES:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_26

    .line 919
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    .line 920
    sget-object p1, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->DATE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    invoke-virtual {p1, p0}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(Ljava/lang/String;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object p1

    if-eqz v0, :cond_24

    .line 923
    sget-object p2, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_DATE_TYPE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 924
    invoke-virtual {p2, p0}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(Ljava/lang/String;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v1

    .line 925
    sget-object p2, Lcom/google/gson/internal/sql/SqlTypesSupport;->DATE_DATE_TYPE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    invoke-virtual {p2, p0}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(Ljava/lang/String;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object p0

    goto :goto_45

    :cond_24
    :goto_24
    move-object p0, v1

    goto :goto_45

    :cond_26
    const/4 p0, 0x2

    if-ne p1, p0, :cond_2b

    if-eq p2, p0, :cond_50

    .line 928
    :cond_2b
    sget-object p0, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->DATE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 929
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(II)Lcom/google/gson/TypeAdapterFactory;

    move-result-object p0

    if-eqz v0, :cond_43

    .line 932
    sget-object v1, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_DATE_TYPE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 933
    invoke-virtual {v1, p1, p2}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(II)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v1

    .line 934
    sget-object v2, Lcom/google/gson/internal/sql/SqlTypesSupport;->DATE_DATE_TYPE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 935
    invoke-virtual {v2, p1, p2}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(II)Lcom/google/gson/TypeAdapterFactory;

    move-result-object p1

    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    goto :goto_45

    :cond_43
    move-object p1, p0

    goto :goto_24

    .line 941
    :goto_45
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_50

    .line 943
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_50
    return-void
.end method

.method private static isTypeObjectOrJsonElement(Ljava/lang/reflect/Type;)Z
    .registers 2

    .line 734
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_14

    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_12

    const-class v0, Lcom/google/gson/JsonElement;

    check-cast p0, Ljava/lang/Class;

    .line 735
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public create()Lcom/google/gson/Gson;
    .registers 24

    move-object/from16 v0, p0

    .line 877
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 878
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 879
    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 880
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 882
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 883
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 884
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 886
    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    iget v3, v0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    iget v4, v0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    invoke-static {v2, v3, v4, v1}, Lcom/google/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    .line 888
    new-instance v2, Lcom/google/gson/Gson;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    move-object v3, v2

    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    move-object v4, v3

    new-instance v3, Ljava/util/HashMap;

    iget-object v5, v0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v5, v4

    iget-boolean v4, v0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    move-object v6, v5

    iget-boolean v5, v0, Lcom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    move-object v7, v6

    iget-boolean v6, v0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    move-object v8, v7

    iget-boolean v7, v0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    move-object v9, v8

    iget-object v8, v0, Lcom/google/gson/GsonBuilder;->formattingStyle:Lcom/google/gson/FormattingStyle;

    move-object v10, v9

    iget-object v9, v0, Lcom/google/gson/GsonBuilder;->strictness:Lcom/google/gson/Strictness;

    move-object v11, v10

    iget-boolean v10, v0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    move-object v12, v11

    iget-boolean v11, v0, Lcom/google/gson/GsonBuilder;->useJdkUnsafe:Z

    move-object v13, v12

    iget-object v12, v0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    move-object v14, v13

    iget-object v13, v0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    move-object v15, v14

    iget v14, v0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    move-object/from16 v16, v15

    iget v15, v0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    move-object/from16 v17, v1

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, v0, Lcom/google/gson/GsonBuilder;->objectToNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/google/gson/GsonBuilder;->numberToNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    move-object/from16 v22, v1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/util/ArrayDeque;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v21

    move-object/from16 v21, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v2

    move-object/from16 v2, v19

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v20

    move-object/from16 v20, v22

    invoke-direct/range {v0 .. v21}, Lcom/google/gson/Gson;-><init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZLcom/google/gson/FormattingStyle;Lcom/google/gson/Strictness;ZZLcom/google/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/gson/ToNumberStrategy;Lcom/google/gson/ToNumberStrategy;Ljava/util/List;)V

    return-object v0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;
    .registers 5

    .line 706
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    instance-of v0, p2, Lcom/google/gson/JsonDeserializer;

    if-nez v0, :cond_e

    instance-of v0, p2, Lcom/google/gson/TypeAdapter;

    if-eqz v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 713
    invoke-static {p1}, Lcom/google/gson/GsonBuilder;->isTypeObjectOrJsonElement(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 720
    instance-of v0, p2, Lcom/google/gson/JsonDeserializer;

    if-eqz v0, :cond_29

    .line 721
    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    .line 722
    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->newFactoryWithMatchRawType(Lcom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    :cond_29
    instance-of v0, p2, Lcom/google/gson/TypeAdapter;

    if-eqz v0, :cond_3c

    .line 727
    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p1

    check-cast p2, Lcom/google/gson/TypeAdapter;

    invoke-static {p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object p1

    .line 728
    iget-object p2, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    return-object p0

    .line 714
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot override built-in adapter for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
