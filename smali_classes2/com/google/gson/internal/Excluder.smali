.class public final Lcom/google/gson/internal/Excluder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcom/google/gson/internal/Excluder;


# instance fields
.field private deserializationStrategies:Ljava/util/List;

.field private modifiers:I

.field private requireExpose:Z

.field private serializationStrategies:Ljava/util/List;

.field private serializeInnerClasses:Z

.field private version:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Lcom/google/gson/internal/Excluder;

    invoke-direct {v0}, Lcom/google/gson/internal/Excluder;-><init>()V

    sput-object v0, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 53
    iput-wide v0, p0, Lcom/google/gson/internal/Excluder;->version:D

    const/16 v0, 0x88

    .line 54
    iput v0, p0, Lcom/google/gson/internal/Excluder;->modifiers:I

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    .line 57
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    .line 58
    iput-object v0, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    return-void
.end method

.method private static isInnerClass(Ljava/lang/Class;)Z
    .registers 2

    .line 232
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->isStatic(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private isValidSince(Lcom/google/gson/annotations/Since;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_10

    .line 241
    invoke-interface {p1}, Lcom/google/gson/annotations/Since;->value()D

    move-result-wide v1

    .line 242
    iget-wide p0, p0, Lcom/google/gson/internal/Excluder;->version:D

    cmpl-double p0, p0, v1

    if-ltz p0, :cond_e

    return v0

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    return v0
.end method

.method private isValidUntil(Lcom/google/gson/annotations/Until;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_10

    .line 249
    invoke-interface {p1}, Lcom/google/gson/annotations/Until;->value()D

    move-result-wide v1

    .line 250
    iget-wide p0, p0, Lcom/google/gson/internal/Excluder;->version:D

    cmpg-double p0, p0, v1

    if-gez p0, :cond_e

    return v0

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    return v0
.end method

.method private isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z
    .registers 3

    .line 236
    invoke-direct {p0, p1}, Lcom/google/gson/internal/Excluder;->isValidSince(Lcom/google/gson/annotations/Since;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0, p2}, Lcom/google/gson/internal/Excluder;->isValidUntil(Lcom/google/gson/annotations/Until;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected clone()Lcom/google/gson/internal/Excluder;
    .registers 2

    .line 63
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/internal/Excluder;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 65
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 49
    invoke-virtual {p0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    move-result-object p0

    return-object p0
.end method

.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .registers 11

    .line 112
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v5

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0, v0, v1}, Lcom/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v4

    if-nez v5, :cond_14

    if-nez v4, :cond_14

    const/4 p0, 0x0

    return-object p0

    .line 121
    :cond_14
    new-instance v2, Lcom/google/gson/internal/Excluder$1;

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/gson/internal/Excluder$1;-><init>(Lcom/google/gson/internal/Excluder;ZZLcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)V

    return-object v2
.end method

.method public excludeClass(Ljava/lang/Class;Z)Z
    .registers 7

    .line 195
    iget-wide v0, p0, Lcom/google/gson/internal/Excluder;->version:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    const-class v0, Lcom/google/gson/annotations/Since;

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/Since;

    const-class v2, Lcom/google/gson/annotations/Until;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/google/gson/annotations/Until;

    invoke-direct {p0, v0, v2}, Lcom/google/gson/internal/Excluder;->isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z

    move-result v0

    if-nez v0, :cond_20

    return v1

    .line 200
    :cond_20
    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    if-nez v0, :cond_2b

    invoke-static {p1}, Lcom/google/gson/internal/Excluder;->isInnerClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2b

    return v1

    :cond_2b
    if-nez p2, :cond_3c

    .line 216
    const-class v0, Ljava/lang/Enum;

    .line 217
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 218
    invoke-static {p1}, Lcom/google/gson/internal/reflect/ReflectionHelper;->isAnonymousOrNonStaticLocal(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3c

    return v1

    :cond_3c
    if-eqz p2, :cond_41

    .line 222
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    goto :goto_43

    :cond_41
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    .line 223
    :goto_43
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4f

    const/4 p0, 0x0

    return p0

    :cond_4f
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 224
    throw p0
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .registers 9

    .line 156
    iget v0, p0, Lcom/google/gson/internal/Excluder;->modifiers:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    return v1

    .line 160
    :cond_b
    iget-wide v2, p0, Lcom/google/gson/internal/Excluder;->version:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_2a

    const-class v0, Lcom/google/gson/annotations/Since;

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/Since;

    const-class v2, Lcom/google/gson/annotations/Until;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/google/gson/annotations/Until;

    invoke-direct {p0, v0, v2}, Lcom/google/gson/internal/Excluder;->isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z

    move-result v0

    if-nez v0, :cond_2a

    return v1

    .line 165
    :cond_2a
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_31

    return v1

    .line 169
    :cond_31
    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder;->requireExpose:Z

    if-eqz v0, :cond_4f

    .line 170
    const-class v0, Lcom/google/gson/annotations/Expose;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/Expose;

    if-eqz v0, :cond_4e

    if-eqz p2, :cond_48

    .line 171
    invoke-interface {v0}, Lcom/google/gson/annotations/Expose;->serialize()Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_4e

    :cond_48
    invoke-interface {v0}, Lcom/google/gson/annotations/Expose;->deserialize()Z

    move-result v0

    if-nez v0, :cond_4f

    :cond_4e
    :goto_4e
    return v1

    .line 176
    :cond_4f
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v0

    if-eqz v0, :cond_5a

    return v1

    :cond_5a
    if-eqz p2, :cond_5f

    .line 180
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    goto :goto_61

    :cond_5f
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    .line 181
    :goto_61
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_80

    .line 182
    new-instance p2, Lcom/google/gson/FieldAttributes;

    invoke-direct {p2, p1}, Lcom/google/gson/FieldAttributes;-><init>(Ljava/lang/reflect/Field;)V

    .line 183
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_77

    goto :goto_80

    :cond_77
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 184
    throw p0

    :cond_80
    :goto_80
    const/4 p0, 0x0

    return p0
.end method
