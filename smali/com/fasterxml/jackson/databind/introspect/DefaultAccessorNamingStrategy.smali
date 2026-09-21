.class public Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;
.super Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$RecordNaming;,
        Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;,
        Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;
    }
.end annotation


# instance fields
.field protected final _config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

.field protected final _forClass:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

.field protected final _getterPrefix:Ljava/lang/String;

.field protected final _isGetterPrefix:Ljava/lang/String;

.field protected final _mutatorPrefix:Ljava/lang/String;

.field protected final _stdBeanNaming:Z


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;)V
    .registers 7

    .line 55
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    .line 57
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_forClass:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 59
    sget-object p2, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STD_BEAN_NAMING:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_stdBeanNaming:Z

    .line 60
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_mutatorPrefix:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_getterPrefix:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_isGetterPrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected _isCglibGetCallbacks(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .registers 3

    .line 221
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object p0

    .line 223
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_37

    .line 228
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 231
    const-string p1, ".cglib"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 232
    const-string p1, "net.sf.cglib"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_35

    const-string p1, "org.hibernate.repackage.cglib"

    .line 234
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_35

    const-string p1, "org.springframework.cglib"

    .line 236
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_34

    goto :goto_35

    :cond_34
    return v0

    :cond_35
    :goto_35
    const/4 p0, 0x1

    return p0

    :cond_37
    return v0
.end method

.method protected _isGroovyMetaClassGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .registers 2

    .line 244
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "groovy.lang"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public findNameForIsGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_isGetterPrefix:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 70
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object p1

    .line 71
    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_10

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_27

    .line 72
    :cond_10
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_isGetterPrefix:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 73
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_stdBeanNaming:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_22

    .line 74
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->stdManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_22
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->legacyManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public findNameForMutator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 110
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_mutatorPrefix:Ljava/lang/String;

    if-eqz p1, :cond_24

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 111
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_stdBeanNaming:Z

    if-eqz p1, :cond_19

    .line 112
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_mutatorPrefix:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->stdManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 113
    :cond_19
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_mutatorPrefix:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->legacyManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public findNameForRegularGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 85
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_getterPrefix:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 90
    const-string v0, "getCallbacks"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 91
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_isCglibGetCallbacks(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result p1

    if-eqz p1, :cond_29

    return-object v1

    .line 94
    :cond_1a
    const-string v0, "getMetaClass"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 96
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_isGroovyMetaClassGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result p1

    if-eqz p1, :cond_29

    return-object v1

    .line 100
    :cond_29
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_stdBeanNaming:Z

    if-eqz p1, :cond_38

    .line 101
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_getterPrefix:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->stdManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 102
    :cond_38
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_getterPrefix:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->legacyManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_43
    return-object v1
.end method

.method protected legacyManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p0, p2, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 143
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 153
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-ne v0, v1, :cond_17

    .line 156
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 159
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v2, p0, p2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_21
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p0, :cond_37

    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 164
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-ne v1, v2, :cond_33

    .line 166
    invoke-virtual {v0, p1, p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 169
    :cond_33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 171
    :cond_37
    :goto_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public modifyFieldName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    return-object p2
.end method

.method protected stdManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p0, p2, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 181
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 190
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-ne v0, v1, :cond_17

    .line 192
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p0, :cond_2a

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 199
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 202
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    sub-int p2, p0, p2

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v2, p1, v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
