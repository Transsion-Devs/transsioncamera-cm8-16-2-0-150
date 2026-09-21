.class public Lthubutils/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "c"

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lthubutils/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Z

.field public static d:Lthubutils/d;

.field public static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Ljava/lang/String;

.field public static g:Z

.field public static h:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lthubutils/c;->b:Ljava/util/List;

    const-string v0, "persist.user.root.support"

    const-string v1, "0"

    .line 2
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lthubutils/c;->c:Z

    const-string v0, "1.0"

    .line 9
    sput-object v0, Lthubutils/c;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Lthubutils/c;->g:Z

    const/4 v0, 0x1

    .line 12
    sput-boolean v0, Lthubutils/c;->h:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x1

    const-string v1, "unknown"

    if-eqz v0, :cond_a

    sget-boolean v0, Lthubutils/c;->c:Z

    if-nez v0, :cond_a

    return-object v1

    .line 2
    :cond_a
    invoke-static {p0}, Lthubutils/c;->b(Ljava/lang/String;)Lthubutils/d;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 4
    sget-boolean v0, Lthubutils/c;->h:Z

    if-eqz v0, :cond_30

    sget-object v0, Lthubutils/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "featureName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lthubutils/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_30
    invoke-virtual {p0}, Lthubutils/d;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_35
    return-object v1
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b3

    const/4 v2, 0x2

    const-string v3, "feature"

    if-eq v0, v2, :cond_29

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    goto :goto_0

    .line 31
    :cond_10
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lthubutils/c;->d:Lthubutils/d;

    sget-object v1, Lthubutils/c;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lthubutils/d;->a(Ljava/util/Map;)V

    .line 33
    sget-object v0, Lthubutils/c;->b:Ljava/util/List;

    sget-object v1, Lthubutils/c;->d:Lthubutils/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_29
    sput-boolean v1, Lthubutils/c;->g:Z

    .line 35
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "features"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5d

    .line 36
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lthubutils/c;->f:Ljava/lang/String;

    .line 37
    sget-boolean v0, Lthubutils/c;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lthubutils/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lthubutils/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 38
    :cond_5d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 39
    new-instance v0, Lthubutils/d;

    invoke-direct {v0}, Lthubutils/d;-><init>()V

    sput-object v0, Lthubutils/c;->d:Lthubutils/d;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lthubutils/c;->e:Ljava/util/Map;

    .line 41
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    sget-object v2, Lthubutils/c;->d:Lthubutils/d;

    invoke-virtual {v2, v0}, Lthubutils/d;->a(Ljava/lang/String;)V

    .line 43
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    sget-object v2, Lthubutils/c;->d:Lthubutils/d;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "disable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lthubutils/d;->a(Z)V

    goto/16 :goto_0

    .line 45
    :cond_98
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "item"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    sget-object v2, Lthubutils/c;->e:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 60
    :cond_b3
    sget-object p0, Lthubutils/c;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b9
    :goto_b9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lthubutils/d;

    .line 61
    sget-boolean v1, Lthubutils/c;->h:Z

    if-eqz v1, :cond_b9

    sget-object v1, Lthubutils/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse: tranFeatureToggle => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    :cond_e2
    return-void
.end method

.method public static b(Ljava/lang/String;)Lthubutils/d;
    .registers 5

    .line 1
    sget-boolean v0, Lthubutils/c;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4f

    .line 5
    :try_start_5
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/system_ext/etc/vconfig/thub/thub_features_config.xml"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_11} :catch_47

    .line 12
    :try_start_11
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 13
    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 14
    invoke-static {v2}, Lthubutils/c;->a(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_1b} :catch_31
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1b} :catch_29
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_1b} :catch_21
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1f

    .line 24
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_39

    goto :goto_4f

    :catchall_1f
    move-exception p0

    goto :goto_3e

    :catch_21
    move-exception v2

    .line 25
    :try_start_22
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1f

    .line 29
    :try_start_25
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_39

    goto :goto_4f

    :catch_29
    move-exception v2

    .line 30
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_1f

    .line 36
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_39

    goto :goto_4f

    :catch_31
    move-exception v2

    .line 37
    :try_start_32
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_1f

    .line 45
    :try_start_35
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_4f

    :catch_39
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    .line 48
    :goto_3e
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    :goto_46
    throw p0

    .line 54
    :catch_47
    sget-object p0, Lthubutils/c;->a:Ljava/lang/String;

    const-string v0, "thub features config file not existed!"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 79
    :cond_4f
    :goto_4f
    sget-object v0, Lthubutils/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lthubutils/d;

    .line 80
    invoke-virtual {v2}, Lthubutils/d;->a()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    return-object v2

    :cond_6c
    return-object v1
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 4

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    sget-boolean v0, Lthubutils/c;->c:Z

    if-nez v0, :cond_9

    return v1

    .line 2
    :cond_9
    invoke-static {p0}, Lthubutils/c;->b(Ljava/lang/String;)Lthubutils/d;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 4
    sget-boolean v0, Lthubutils/c;->h:Z

    if-eqz v0, :cond_2f

    sget-object v0, Lthubutils/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lthubutils/d;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_2f
    invoke-virtual {p0}, Lthubutils/d;->c()Z

    move-result p0

    return p0

    :cond_34
    return v1
.end method
