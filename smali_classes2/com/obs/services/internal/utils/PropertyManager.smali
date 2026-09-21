.class public Lcom/obs/services/internal/utils/PropertyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bundle:Ljava/util/ResourceBundle;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/internal/utils/PropertyManager;->bundle:Ljava/util/ResourceBundle;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/obs/services/internal/utils/PropertyManager;
    .registers 3

    .line 32
    new-instance v0, Lcom/obs/services/internal/utils/PropertyManager;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/obs/services/internal/utils/PropertyManager;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/Locale;)Lcom/obs/services/internal/utils/PropertyManager;
    .registers 3

    .line 36
    new-instance v0, Lcom/obs/services/internal/utils/PropertyManager;

    invoke-direct {v0, p0, p1}, Lcom/obs/services/internal/utils/PropertyManager;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public varargs getFormattedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 44
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/utils/PropertyManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 40
    iget-object p0, p0, Lcom/obs/services/internal/utils/PropertyManager;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
