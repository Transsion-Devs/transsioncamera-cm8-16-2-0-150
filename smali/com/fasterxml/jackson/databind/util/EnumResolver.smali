.class public Lcom/fasterxml/jackson/databind/util/EnumResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected final _defaultValue:Ljava/lang/Enum;

.field protected final _enumClass:Ljava/lang/Class;

.field protected final _enums:[Ljava/lang/Enum;

.field protected final _enumsById:Ljava/util/HashMap;

.field protected final _isFromIntValue:Z

.field protected final _isIgnoreCase:Z


# direct methods
.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;Ljava/lang/Enum;ZZ)V
    .registers 7

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumClass:Ljava/lang/Class;

    .line 53
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    .line 54
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    .line 55
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_defaultValue:Ljava/lang/Enum;

    .line 56
    iput-boolean p5, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_isIgnoreCase:Z

    .line 57
    iput-boolean p6, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_isFromIntValue:Z

    return-void
.end method

.method protected static _constructFor(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .registers 16

    .line 88
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 89
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v2

    .line 90
    array-length p0, v2

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, v1, v2, p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findEnumValues(Ljava/lang/Class;[Ljava/lang/Enum;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 91
    array-length v0, p0

    new-array v0, v0, [[Ljava/lang/String;

    .line 92
    invoke-virtual {p1, v1, v2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findEnumAliases(Ljava/lang/Class;[Ljava/lang/Enum;[[Ljava/lang/String;)V

    .line 93
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 94
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_1d
    if-ge v6, v4, :cond_45

    .line 95
    aget-object v7, v2, v6

    .line 96
    aget-object v8, p0, v6

    if-nez v8, :cond_29

    .line 98
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    .line 100
    :cond_29
    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    aget-object v8, v0, v6

    if-eqz v8, :cond_42

    .line 103
    array-length v9, v8

    move v10, v5

    :goto_32
    if-ge v10, v9, :cond_42

    aget-object v11, v8, v10

    .line 106
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3f

    .line 107
    invoke-virtual {v3, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    add-int/lit8 v10, v10, 0x1

    goto :goto_32

    :cond_42
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 112
    :cond_45
    new-instance v0, Lcom/fasterxml/jackson/databind/util/EnumResolver;

    .line 113
    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumDefault(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v4

    const/4 v6, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/util/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;Ljava/lang/Enum;ZZ)V

    return-object v0
.end method

.method protected static _constructUsingMethod(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .registers 11

    .line 180
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 181
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v2

    .line 182
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 184
    array-length p0, v2

    :cond_e
    :goto_e
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_47

    .line 185
    aget-object v4, v2, p0

    .line 187
    :try_start_14
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 189
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_21} :catch_22

    goto :goto_e

    :catch_22
    move-exception v0

    move-object p0, v0

    .line 192
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to access @JsonValue of Enum value "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :cond_47
    new-instance v0, Lcom/fasterxml/jackson/databind/util/EnumResolver;

    .line 196
    invoke-static {p2, v1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumDefault(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v4

    .line 198
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_isIntType(Ljava/lang/Class;)Z

    move-result v6

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/util/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;Ljava/lang/Enum;ZZ)V

    return-object v0
.end method

.method protected static _constructUsingToString(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .registers 13

    .line 135
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 136
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v2

    .line 137
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 138
    array-length p0, v2

    new-array p0, p0, [[Ljava/lang/String;

    if-eqz p1, :cond_15

    .line 140
    invoke-virtual {p1, v1, v2, p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findEnumAliases(Ljava/lang/Class;[Ljava/lang/Enum;[[Ljava/lang/String;)V

    .line 144
    :cond_15
    array-length v0, v2

    :cond_16
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_39

    .line 145
    aget-object v4, v2, v0

    .line 146
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    aget-object v5, p0, v0

    if-eqz v5, :cond_16

    .line 149
    array-length v6, v5

    const/4 v7, 0x0

    :goto_29
    if-ge v7, v6, :cond_16

    aget-object v8, v5, v7

    .line 152
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_36

    .line 153
    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 158
    :cond_39
    new-instance v0, Lcom/fasterxml/jackson/databind/util/EnumResolver;

    .line 159
    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumDefault(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v4

    const/4 v6, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/util/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;Ljava/lang/Enum;ZZ)V

    return-object v0
.end method

.method protected static _enumClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 1

    return-object p0
.end method

.method protected static _enumConstants(Ljava/lang/Class;)[Ljava/lang/Enum;
    .registers 4

    .line 212
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    if-eqz v0, :cond_d

    return-object v0

    .line 214
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum constants for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static _enumDefault(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/lang/Class;)Ljava/lang/Enum;
    .registers 2

    if-eqz p0, :cond_b

    .line 220
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDefaultEnumValue(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static _isIntType(Ljava/lang/Class;)Z
    .registers 2

    .line 224
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 225
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->wrapperType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 227
    :cond_a
    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_1d

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_1d

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_1d

    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    return p0
.end method

.method public static constructFor(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .registers 4

    .line 78
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_ENUMS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 79
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p0

    .line 78
    invoke-static {p1, v0, p0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_constructFor(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object p0

    return-object p0
.end method

.method public static constructUsingMethod(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .registers 5

    .line 170
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_ENUMS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 171
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p0

    .line 170
    invoke-static {p1, p2, v0, p0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_constructUsingMethod(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object p0

    return-object p0
.end method

.method public static constructUsingToString(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .registers 4

    .line 125
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_ENUMS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 126
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p0

    .line 125
    invoke-static {p1, v0, p0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_constructUsingToString(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected _findEnumCaseInsensitive(Ljava/lang/String;)Ljava/lang/Enum;
    .registers 4

    .line 329
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 330
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 331
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    return-object p0

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public constructLookup()Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->construct(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    move-result-object p0

    return-object p0
.end method

.method public findEnum(Ljava/lang/String;)Ljava/lang/Enum;
    .registers 4

    .line 318
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    if-nez v0, :cond_13

    .line 320
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_isIgnoreCase:Z

    if-eqz v1, :cond_13

    .line 321
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_findEnumCaseInsensitive(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0

    :cond_13
    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Enum;
    .registers 1

    .line 345
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_defaultValue:Ljava/lang/Enum;

    return-object p0
.end method

.method public getEnumClass()Ljava/lang/Class;
    .registers 1

    .line 367
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumClass:Ljava/lang/Class;

    return-object p0
.end method

.method public getEnumIds()Ljava/util/Collection;
    .registers 1

    .line 364
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getRawEnums()[Ljava/lang/Enum;
    .registers 1

    .line 349
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    return-object p0
.end method

.method public isFromIntValue()Z
    .registers 1

    .line 380
    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_isFromIntValue:Z

    return p0
.end method
