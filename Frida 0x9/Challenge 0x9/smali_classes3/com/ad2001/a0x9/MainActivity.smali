.class public Lcom/ad2001/a0x9/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private binding:Lcom/ad2001/a0x9/databinding/ActivityMainBinding;

.field btn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, "a0x9"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public native check_flag()I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/ad2001/a0x9/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/ad2001/a0x9/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/ad2001/a0x9/databinding/ActivityMainBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/ad2001/a0x9/MainActivity;->binding:Lcom/ad2001/a0x9/databinding/ActivityMainBinding;

    .line 39
    invoke-virtual {v0}, Lcom/ad2001/a0x9/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ad2001/a0x9/MainActivity;->setContentView(Landroid/view/View;)V

    .line 41
    sget v0, Lcom/ad2001/a0x9/R$id;->button:I

    invoke-virtual {p0, v0}, Lcom/ad2001/a0x9/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ad2001/a0x9/MainActivity;->btn:Landroid/widget/Button;

    .line 42
    new-instance v1, Lcom/ad2001/a0x9/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/ad2001/a0x9/MainActivity$1;-><init>(Lcom/ad2001/a0x9/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method
