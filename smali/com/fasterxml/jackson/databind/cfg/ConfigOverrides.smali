.class public Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected _defaultInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

.field protected _defaultLeniency:Ljava/lang/Boolean;

.field protected _defaultMergeable:Ljava/lang/Boolean;

.field protected _defaultSetterInfo:Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

.field protected _overrides:Ljava/util/Map;

.field protected _visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;


# direct methods
.method public constructor <init>()V
    .registers 8

    .line 66
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v2

    .line 67
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    move-result-object v3

    .line 68
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->defaultInstance()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;-><init>(Ljava/util/Map;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;Lcom/fasterxml/jackson/annotation/JsonSetter$Value;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;Lcom/fasterxml/jackson/annotation/JsonSetter$Value;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 7

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    .line 81
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 82
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultSetterInfo:Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    .line 83
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    .line 84
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultMergeable:Ljava/lang/Boolean;

    .line 85
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultLeniency:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method protected _newMap()Ljava/util/Map;
    .registers 1

    .line 241
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public copy()Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;
    .registers 12

    .line 101
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :cond_5
    move-object v5, v0

    goto :goto_35

    .line 104
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_newMap()Ljava/util/Map;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;->copy()Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 109
    :goto_35
    new-instance v4, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultSetterInfo:Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultMergeable:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultLeniency:Ljava/lang/Boolean;

    invoke-direct/range {v4 .. v10}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;-><init>(Ljava/util/Map;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;Lcom/fasterxml/jackson/annotation/JsonSetter$Value;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v4
.end method

.method public findFormatDefaults(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    if-eqz v0, :cond_20

    .line 150
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;

    if-eqz p1, :cond_20

    .line 152
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->getFormat()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 154
    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasLenient()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 155
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultLeniency:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->withLenient(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p0

    return-object p0

    :cond_1f
    return-object p1

    .line 161
    :cond_20
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultLeniency:Ljava/lang/Boolean;

    if-nez p0, :cond_29

    .line 162
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p0

    return-object p0

    .line 164
    :cond_29
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->forLeniency(Z)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p0

    return-object p0
.end method

.method public findOrCreateOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    if-nez v0, :cond_a

    .line 129
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_newMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    .line 131
    :cond_a
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    if-nez v0, :cond_1e

    .line 133
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;-><init>()V

    .line 134
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    return-object v0
.end method

.method public findOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;
    .registers 2

    .line 121
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 124
    :cond_6
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;

    return-object p0
.end method

.method public getDefaultInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .registers 1

    .line 174
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-object p0
.end method

.method public getDefaultMergeable()Ljava/lang/Boolean;
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultMergeable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getDefaultSetterInfo()Lcom/fasterxml/jackson/annotation/JsonSetter$Value;
    .registers 1

    .line 178
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultSetterInfo:Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    return-object p0
.end method

.method public getDefaultVisibility()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .registers 1

    .line 196
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    return-object p0
.end method

.method public setDefaultInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-void
.end method

.method public setDefaultLeniency(Ljava/lang/Boolean;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultLeniency:Ljava/lang/Boolean;

    return-void
.end method

.method public setDefaultMergeable(Ljava/lang/Boolean;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultMergeable:Ljava/lang/Boolean;

    return-void
.end method

.method public setDefaultSetterInfo(Lcom/fasterxml/jackson/annotation/JsonSetter$Value;)V
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultSetterInfo:Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    return-void
.end method

.method public setDefaultVisibility(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)V
    .registers 2

    .line 231
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    return-void
.end method
